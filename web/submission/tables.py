import os

from django.utils.safestring import mark_safe
import django_tables2 as tables
from datetime import datetime

from . import models

class SubmissionTable(tables.Table):
    TEMPLATE = '''
   <a href="{% url 'submission' record.pk %}">Detail</a>
'''
    control = tables.TemplateColumn(TEMPLATE)

    class Meta:
        model = models.Submission
        attrs = {"class": "paleblue"}

class ValidationUnitTable(tables.Table):
    TEMPLATE = '''
   <a href="{% url 'validation_unit' record.pk %}">Detail</a>
'''
    control = tables.TemplateColumn(TEMPLATE)

    class Meta:
        model = models.ValidationUnit
        attrs = {"class": "paleblue"}
