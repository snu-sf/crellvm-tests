from django.core.management.base import BaseCommand, CommandError
from django.utils.timezone import get_current_timezone
from django.contrib.auth.models import User
from django.core.files import File

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
    help = 'Adds a new user'

    def add_arguments(self, parser):
        parser.add_argument('username')

    def handle(self, *args, **options):
        username = options['username']
        user = User.objects.create_user(username, password=username)
        user.is_superuser = False
        user.is_staff = False
        user.save()

        self.stdout.write(self.style.SUCCESS('Successfully added user "%s"' % username))
