from __future__ import absolute_import

import os
import sys
import shutil
import subprocess
import tempfile
import zipfile
import re
import time
from celery import shared_task

from . import models

TIMEOUT = 100
PFILE_PATTERN = re.compile("P.*\.v")

def extract_submission(submission_filename, submission_dir):
    z = zipfile.ZipFile(submission_filename)
    for name in z.namelist():
        z.extract(name, submission_dir)

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
