# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2016-03-14 03:51
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('submission', '0007_result'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='assignment',
            name='skeleton',
        ),
        migrations.AddField(
            model_name='assignment',
            name='status',
            field=models.TextField(default='OLD'),
            preserve_default=False,
        ),
    ]
