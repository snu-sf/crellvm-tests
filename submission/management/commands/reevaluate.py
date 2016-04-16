from django.core.management.base import BaseCommand, CommandError
from django.utils.timezone import get_current_timezone
from submission.models import Assignment, Submission
from submission import tasks
from django.core.files import File

import argparse
from datetime import datetime

from . import _private

class Command(BaseCommand):
    help = 'Reevaluates submissions to an assignment'

    def add_arguments(self, parser):
        parser.add_argument('assignment_name')

    def handle(self, *args, **options):
        assignment_name = options['assignment_name']
        assignment = Assignment.objects.get(name=assignment_name)

        submissions = Submission.objects.filter(assignment=assignment)

        for submission in submissions:
            tasks.evaluate.delay(submission.id)

        self.stdout.write(self.style.SUCCESS('Successfully reevaluated assignment "%s"' % assignment_name))
