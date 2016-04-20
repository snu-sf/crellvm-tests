# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2016-02-25 15:31
from __future__ import unicode_literals

from django.db import migrations, models
import submission.models


class Migration(migrations.Migration):

    dependencies = [
        ('submission', '0002_assignment_skeleton'),
    ]

    operations = [
        migrations.AddField(
            model_name='submission',
            name='submission_file',
            field=models.FileField(default=0, upload_to=submission.models.submission_filename),
            preserve_default=False,
        ),
    ]
