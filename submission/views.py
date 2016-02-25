import os

from django.contrib.auth.mixins import LoginRequiredMixin
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render
from django.views.generic import ListView, DetailView
from django.core.urlresolvers import reverse
from datetime import datetime

from . import models, forms, tasks

# Create your views here.

class AnnouncementList(ListView):
    model = models.Announcement
    context_object_name = 'announcements'

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

        context['submissions'] = models.Submission.objects.filter(assignment=assignment.name, user=1).order_by('-submission_date')
        context['submission_form'] = forms.SubmissionForm()

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

class AssignmentSubmit(LoginRequiredMixin, DetailView):
    model = models.Assignment
    slug_field = 'name'
    context_object_name = 'assignment'

    def post(self, request, *args, **kwargs):
        submission_form = forms.SubmissionForm(request.POST, request.FILES)

        if submission_form.is_valid():
            assignment = self.get_object()
            submitted_file = submission_form.cleaned_data['submitted_file']
            submission = models.Submission(assignment=assignment,
                                           user=request.user,
                                           submission_date=datetime.now(),
                                           submission_file=submitted_file,
                                           status = 'PENDING',
                                           score = 0,
                                           message = '')
            submission.save()
            tasks.evaluate.delay(submission.id)
            return HttpResponseRedirect(reverse('assignment', args=[assignment.name]))
        else:
            return HttpResponse('Bad Submission')

class SubmissionDetail(LoginRequiredMixin, DetailView):
    model = models.Submission
    context_object_name = 'submission'

class SubmissionDownload(LoginRequiredMixin, DetailView):
    model = models.Submission
    context_object_name = 'submission'

    def get(self, request, *args, **kwargs):
        submission = self.get_object()
        filename = os.path.basename(submission.submission_file.file.name)
        response = HttpResponse(submission.submission_file, content_type='text/plain')
        response['Content-Disposition'] = 'attachment; filename=%s' % filename
        return response

class FileDetail(DetailView):
    model = models.File
    context_object_name = 'file'
