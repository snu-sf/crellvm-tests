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

def get_result(giveup, resultp, resulte):
    if giveup:
        return ("GIVEUP", "")
    if resultp['retcode']:
        return ("COMPILE ERROR", "RETCODE: %s\n\nSTDOUT:\n%s\n\nSTDERR:\n%s" % (resultp['retcode'], resultp['stdout'], resultp['stderr']))
    if resulte['retcode']:
        return ("EVALUATION ERROR", "RETCODE: %s\n\nSTDOUT:\n%s\n\nSTDERR:\n%s" % (resulte['retcode'], resulte['stdout'], resulte['stderr']))
    return None

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
        admit = False
        score_total = 0

        run(["make", "eval"], run_dir)

        for problem in problems:
            pfile = "P%02d.v" % problem.index
            efile = "E%02d.v" % problem.index
            pofile = "P%02d.vo" % problem.index
            eofile = "E%02d.vo" % problem.index

            admit = admit or (not run(["grep", "-i", "admit", os.path.join(submission_dir, pfile)])['retcode'])
            giveup = not run(["grep", "GIVEUP", os.path.join(submission_dir, pfile)])['retcode']

            shutil.copy(os.path.join(submission_dir, pfile), run_dir)
            resultp = run(["make", pofile], run_dir)
            resulte = run(["make", eofile], run_dir)
            shutil.copy(os.path.join(assignment_dir, pfile), run_dir)

            result = get_result(giveup, resultp, resulte)

            if result:
                score = 0
                status = result[0]
                message = result[1]
            else:
                score = problem.point
                status = 'SUCCESS'
                message = ''

            score_total = score_total + score
            result = models.Result(submission=submission,
                                   problem=problem,
                                   score=score,
                                   status=status,
                                   message=message)
            result.save()

        if admit:
            submission.status = 'ADMIT'
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
