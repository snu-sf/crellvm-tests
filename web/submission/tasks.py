from __future__ import absolute_import

import os
import time
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
def process_translation_unit(opt_filename, opt_pass, main_filename, test_dir, rundir, tunit_id):
    # run opt
    tunit = models.TranslationUnit.objects.get(id=tunit_id)
    tunitdir = os.path.join(rundir, 'vunits', tunit.dirname)
    os.makedirs(tunitdir, exist_ok=True)
    result = run([opt_filename,
                  '-' + opt_pass,
                  '-S',
                  '-llvmberry-outputdir', tunitdir,
                  os.path.join(test_dir, tunit.dirname, tunit.filename + '.ll')],
                tunitdir)

    # save logs
    tunit.retcode = result['retcode']
    tunit.stdout = result['stdout']
    tunit.stderr = result['stderr']
    tunit.save()

    # create validation unit tasks
    for root, dirnames, filenames in os.walk(tunitdir):
        for filename in fnmatch.filter(filenames, tunit.filename + '.*.hint.json'):
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

    tunit.status = 'TRANSLATED'
    tunit.save()

@shared_task
def process_submission(submission_id):
    submission = models.Submission.objects.get(id=submission_id)
    rundir = get_rundir(submission_id)
    opt_filename = os.path.join(rundir, 'opt')
    main_filename = os.path.join(rundir, 'main.native')

    submission.status = 'OPTING'
    submission.save()

    # find ll files within test_dir, and create translation unit tasks
    for root, dirnames, filenames in os.walk(submission.test_dir):
        for filename in fnmatch.filter(filenames, '*.ll'):
            tunit = models.TranslationUnit(submission=submission,
                                           status='PENDING',
                                           dirname=os.path.relpath(root, submission.test_dir),
                                           filename=os.path.splitext(os.path.basename(filename))[0])
            tunit.save()
            process_translation_unit.delay(opt_filename,
                                           submission.opt_pass,
                                           main_filename,
                                           submission.test_dir,
                                           rundir,
                                           tunit.id)

    submission.status = 'OPTED'
    submission.save()

def run_submission(submission):
    rundir = get_rundir(submission.id)
    os.makedirs(rundir)
    shutil.copy(submission.opt_filename, os.path.join(rundir, 'opt'))
    shutil.copy(submission.main_filename, os.path.join(rundir, 'main.native'))
    process_submission.delay(submission.id)
