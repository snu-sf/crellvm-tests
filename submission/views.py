from django.shortcuts import render
from django.views.generic import ListView, DetailView

from . import models

# Create your views here.

class AssignmentList(ListView):
    model = models.Assignment
    context_object_name = 'assignments'

class AssignmentDetail(DetailView):
    model = models.Assignment
    slug_field = 'name'
    context_object_name = 'assignment'

class SubmissionList(ListView):
    model = models.Submission
    context_object_name = 'submissions'

class SubmissionDetail(DetailView):
    model = models.Submission
    context_object_name = 'submission'

class FileDetail(DetailView):
    model = models.File
    context_object_name = 'file'
