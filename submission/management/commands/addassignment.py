from django.core.management.base import BaseCommand, CommandError
from django.utils.timezone import get_current_timezone
from submission.models import Assignment, Problem

import argparse
from datetime import datetime

from . import _private

def valid_date(date):
    tz = get_current_timezone()
    try:
        return tz.localize(datetime.strptime(date, "%Y-%m-%d:%H"))
    except ValueError:
        msg = "Not a valid date: '{0}'.".format(date)
        raise argparse.ArgumentTypeError(msg)

class Command(BaseCommand):
    help = 'Adds a new assignment'

    def add_arguments(self, parser):
        parser.add_argument('assignment_name')
        parser.add_argument('index', type=int)
        parser.add_argument('due_date', type=valid_date)

    def handle(self, *args, **options):
        assignment_name = options['assignment_name']
        index = options['index']
        due_date = options['due_date']

        if Assignment.objects.filter(name=assignment_name).exists():
            self.stderr.write(self.style.ERROR('Assignment %s already exists' % assignment_name))
            return

        assignment = Assignment(name=assignment_name, due_date=due_date)
        assignment.save()

        for i in range(1, index + 1):
            problem = Problem(assignment=assignment, index=i, point=_private.DEFAULT_POINT)
            problem.save()

        self.stdout.write(self.style.SUCCESS('Successfully added assignment "%s"' % assignment_name))
