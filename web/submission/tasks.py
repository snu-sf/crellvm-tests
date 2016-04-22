from __future__ import absolute_import

import os
import fnmatch
import sys
import shutil
import subprocess
import tempfile
import zipfile
import re
import time
import json
from django.conf import settings
from celery import shared_task

from . import models

LLVMBERRY_ROOT = getattr(settings, 'LLVMBERRY_ROOT', None)
TIMEOUT = 100
PFILE_PATTERN = re.compile("P.*\.v")

def communicate(process, **kwargs):
    (stdout, stderr) = process.communicate(timeout=TIMEOUT)
    if stdout:
        stdout = stdout.decode('utf-8')
    if stderr:
        stderr = stderr.decode('utf-8')
    return (stdout, stderr)

def run(cmds, cwd=None):
    process = subprocess.Popen(cmds, stdout=subprocess.PIPE, stderr=subprocess.PIPE, cwd=cwd)
    try:
        (stdout, stderr) = communicate(process)
        retcode = process.wait()
        return {'retcode': retcode, 'stdout': stdout, 'stderr': stderr}
    except subprocess.TimeoutExpired:
        process.kill()
        (stdout, stderr) = communicate(process)
        return {'retcode': 'TIMEOUT', 'stdout': stdout, 'stderr': stderr}

def get_rundir(submission_id):
    return os.path.join(LLVMBERRY_ROOT, '%04d' % submission_id)

def get_validation_unit_status(stderr):
    if 'Validation succeeded.' in stderr:
        return 'SUCCESS'
    elif 'Validation failed.' in stderr:
        return 'FAILURE'
    elif 'Not_Supported' in stderr or 'not supported' in stderr:
        return 'NOT SUPPORTED'
    else:
        return 'UNKNOWN'

@shared_task
def process_validation_unit(main_filename, tunitdir, vunit_id):
    # run validator
    vunit = models.ValidationUnit.objects.get(id=vunit_id)
    src_filename = os.path.join(tunitdir, vunit.basename + '.src.bc')
    tgt_filename = os.path.join(tunitdir, vunit.basename + '.tgt.bc')
    hint_filename = os.path.join(tunitdir, vunit.basename + '.hint.json')
    result = run([main_filename,
                  src_filename,
                  tgt_filename,
                  hint_filename])

    # save logs
    vunit.retcode = result['retcode']
    vunit.stdout = result['stdout']
    vunit.stderr = result['stderr']
    vunit.status = get_validation_unit_status(vunit.stderr)
    vunit.save()

    # remove files if successful
    if vunit.status == 'SUCCESS':
        os.remove(src_filename)
        os.remove(tgt_filename)
        os.remove(hint_filename)
    else:
        src_ll_filename = os.path.join(tunitdir, vunit.basename + '.src.ll')
        tgt_ll_filename = os.path.join(tunitdir, vunit.basename + '.tgt.ll')
        run(['/opt/llvmberry-tests/llvm-dis', src_filename, '-o', src_ll_filename])
        run(['/opt/llvmberry-tests/llvm-dis', tgt_filename, '-o', tgt_ll_filename])

        # TODO: rerun w/ debug flag if not successful.

@shared_task
def process_translation_unit(opt_filename, opt_options, main_filename, test_dir, rundir, tunit_id):
    # run opt
    tunit = models.TranslationUnit.objects.get(id=tunit_id)
    tunitdir = os.path.join(rundir, 'vunits', tunit.dirname)
    os.makedirs(tunitdir, exist_ok=True)
    result = run([opt_filename,
                  '-instcombine', # TODO
                  '-S',
                  '-llvmberry-outputdir', tunitdir,
                  os.path.join(test_dir, tunit.dirname, tunit.filename)],
                tunitdir)

    # save logs
    tunit.retcode = result['retcode']
    tunit.stdout = result['stdout']
    tunit.stderr = result['stderr']
    tunit.save()

    # create validation unit tasks
    for root, dirnames, filenames in os.walk(tunitdir):
        for filename in fnmatch.filter(filenames, '*.hint.json'):
            with open(os.path.join(tunitdir, filename), 'r') as hint_file:
                category = json.loads(hint_file.read())['opt_name']

            basename = filename[:-10]
            vunit = models.ValidationUnit(translation_unit=tunit,
                                          status='PENDING',
                                          category=category,
                                          basename=basename)
            vunit.save()
            process_validation_unit.delay(main_filename,
                                          tunitdir,
                                          vunit.id)

@shared_task
def process_submission(submission_id):
    submission = models.Submission.objects.get(id=submission_id)
    rundir = get_rundir(submission_id)
    opt_filename = os.path.join(rundir, 'opt')
    main_filename = os.path.join(rundir, 'main.native')

    # find ll files within test_dir, and create translation unit tasks
    for root, dirnames, filenames in os.walk(submission.test_dir):
        for filename in fnmatch.filter(filenames, '*.ll'):
            tunit = models.TranslationUnit(submission=submission,
                                           status='PENDING',
                                           dirname=os.path.dirname(filename),
                                           filename=os.path.basename(filename))
            tunit.save()
            process_translation_unit.delay(opt_filename,
                                           submission.opt_options,
                                           main_filename,
                                           submission.test_dir,
                                           rundir,
                                           tunit.id)

def run_submission(submission):
    rundir = get_rundir(submission.id)
    os.makedirs(rundir)
    shutil.copy(submission.opt_filename, os.path.join(rundir, 'opt'))
    shutil.copy(submission.main_filename, os.path.join(rundir, 'main.native'))
    process_submission.delay(submission.id)

def extract_submission(submission_filename, submission_dir):
    z = zipfile.ZipFile(submission_filename)
    for name in z.namelist():
        z.extract(name, submission_dir)


def evaluate_problem(forbiddens, submission_dir, run_dir, problem):
    pfile = "P%02d.v" % problem.index
    pofile = "P%02d.vo" % problem.index

    if not run(["grep", "-E", forbiddens, os.path.join(submission_dir, pfile)])['retcode']:
        return ('FORBIDDEN', 0, "")

    if not run(["grep", "GIVEUP", os.path.join(submission_dir, pfile)])['retcode']:
        return ('GIVEUP', 0, "")

    shutil.copy(os.path.join(submission_dir, pfile), run_dir)
    result = run(["make", pofile], run_dir)
    if result['retcode']:
        return ("COMPILE ERROR", 0, "RETCODE: %s\n\nSTDOUT:\n%s\n\nSTDERR:\n%s" % (result['retcode'], result['stdout'], result['stderr']))

    score = 0
    messages = []

    efiles = filter(lambda f: f.startswith("E%02d" % problem.index) and f.endswith(".v"), os.listdir(run_dir))
    for efile in efiles:
        eofile = "%so" % efile
        result = run(["make", eofile], run_dir)

        messages.append("%s\n\nRETCODE: %s\n\nSTDOUT:\n%s\n\nSTDERR:\n%s" % (efile, result['retcode'], result['stdout'], result['stderr']))
        if not result['retcode']:
            score += 10

    ffiles = filter(lambda f: f.startswith("F%02d" % problem.index) and f.endswith(".v"), os.listdir(run_dir))
    for ffile in ffiles:
        eofile = "%so" % ffile
        result = run(["make", eofile], run_dir)

        messages.append("%s\n\nRETCODE: %s\n" % (ffile, result['retcode']))
        if not result['retcode']:
            score += 10

    return ('SUCCESS', score, "\n\n".join(messages))

@shared_task
def evaluate(submission_id):
    try:
        submission = models.Submission.objects.get(pk=submission_id)

        submission.status = 'RUNNING'
        submission.save()

        evaluation_dir = tempfile.mkdtemp()

        assignment_dir = os.path.join("lib/pl/assignments", submission.assignment.name)
        submission_dir = os.path.join(evaluation_dir, "submission")
        extract_submission(submission.submission_file, submission_dir)

        problems = models.Problem.objects.filter(assignment=submission.assignment)
        sorted(problems, key=lambda p: p.index)

        run_dir = os.path.join(evaluation_dir, "run")
        shutil.copytree(assignment_dir, run_dir)
        results = {}
        forbidden = False
        score_total = 0

        forbidden_file = os.path.join(run_dir, "forbidden.txt")
        with open(forbidden_file, 'r') as f:
            forbiddens = f.read().split('\n')
            forbiddens = filter(lambda f: f, forbiddens)
            forbiddens = '|'.join(forbiddens)

        for problem in problems:
            (status, score, message) = evaluate_problem(forbiddens, submission_dir, run_dir, problem)

            if status == 'FORBIDDEN':
                forbidden = True

            score_total = score_total + score
            result = models.Result(submission=submission,
                                   problem=problem,
                                   score=score,
                                   status=status,
                                   message=message)
            result.save()

        if forbidden:
            submission.status = 'FORBIDDEN'
            submission.score = 0
            submission.save()
            return

        submission.status = 'SUCCESS'
        submission.score = score_total
        submission.message = ''
        submission.save()

    except zipfile.BadZipfile as e:
        submission.status = 'NO ZIPFILE'
        submission.message = str(e)
        submission.save()

    except FileNotFoundError as e:
        submission.status = 'MISSING FILE'
        submission.message = str(e)
        submission.save()

    except Exception as e:
        submission.status = 'SYSTEM ERROR'
        submission.message = str(e)
        submission.save()
