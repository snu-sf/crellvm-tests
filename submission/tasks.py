from __future__ import absolute_import

import time
from celery import shared_task

from . import models


@shared_task
def evaluate(submission_id):
    try:
        submission = models.Submission.objects.get(pk=submission_id)

        submission.status = 'RUNNING'
        submission.save()

        time.sleep(20)

        submission.status = 'SUCCESS'
        submission.score = 100
        submission.message = 'mocked..'
        submission.save()

    except Submission.DoesNotExist:
        pass
