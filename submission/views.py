import os

from django.contrib.auth.mixins import LoginRequiredMixin
from django.http import HttpResponse
from django.shortcuts import render
from django.views.generic import ListView, DetailView

from . import models

# Create your views here.

class AssignmentList(ListView):
    model = models.Assignment
    context_object_name = 'assignments'

class AssignmentDetail(LoginRequiredMixin, DetailView):
    model = models.Assignment
    slug_field = 'name'
    context_object_name = 'assignment'

    def get_context_data(self, **kwargs):
        context = super(AssignmentDetail, self).get_context_data(**kwargs)
        assignment = context['assignment']

        context['skeleton_filename'] = os.path.basename(assignment.skeleton.file.name)
        context['submissions'] = models.Submission.objects.filter(assignment=assignment.name, user=1).order_by('-submission_date')

        return context

class AssignmentSkeleton(LoginRequiredMixin, DetailView):
    model = models.Assignment
    slug_field = 'name'
    context_object_name = 'assignment'

    def get(self, request, *args, **kwargs):
        assignment = self.get_object()
        filename = os.path.basename(assignment.skeleton.file.name)
        response = HttpResponse(assignment.skeleton.file, content_type='text/plain')
        response['Content-Disposition'] = 'attachment; filename=%s' % filename
        return response

class SubmissionList(ListView):
    model = models.Submission
    context_object_name = 'submissions'

class SubmissionDetail(DetailView):
    model = models.Submission
    context_object_name = 'submission'

class FileDetail(DetailView):
    model = models.File
    context_object_name = 'file'
