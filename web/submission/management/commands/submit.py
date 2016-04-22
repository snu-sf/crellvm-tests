from django.core.management.base import BaseCommand, CommandError
from django.contrib.auth.models import User

from submission import models, tasks

import argparse
from datetime import datetime

class Command(BaseCommand):
    help = 'Submit'

    def add_arguments(self, parser):
        parser.add_argument('user')
        parser.add_argument('opt_filename')
        parser.add_argument('opt_options')
        parser.add_argument('main_filename')
        parser.add_argument('test_dir')

    def handle(self, *args, **options):
        user = User.objects.get(username=options['user'])
        opt_filename = options['opt_filename']
        opt_options = options['opt_options']
        main_filename = options['main_filename']
        test_dir = options['test_dir']

        submission = models.Submission(status = 'PENDING',
                                       user=user,
                                       date=datetime.now(),
                                       opt_filename=opt_filename,
                                       opt_options=opt_options,
                                       main_filename=main_filename,
                                       test_dir=test_dir)
        submission.save()
        tasks.run_submission(submission)
