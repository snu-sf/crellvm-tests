import os

from django.utils.safestring import mark_safe
import django_tables2 as tables
from datetime import datetime

from . import models

TEMPLATE = '''
   <a href="{% url 'submission' record.pk %}">Detail</a>
'''

class SubmissionTable(tables.Table):
    control = tables.TemplateColumn(TEMPLATE)

    class Meta:
        model = models.Submission
        attrs = {"class": "paleblue"}
