import os

from django.contrib.auth.mixins import LoginRequiredMixin
from django.http import Http404, HttpResponse, HttpResponseRedirect
from django.shortcuts import render
from django.views.generic import ListView, DetailView
from django.core.urlresolvers import reverse
from datetime import datetime
from celery.task.control import inspect

from . import models, forms, tasks

# Create your views here.

class AssignmentList(ListView):
    model = models.Assignment
    context_object_name = 'assignments'

    def get_context_data(self, **kwargs):
        context = super(AssignmentList, self).get_context_data(**kwargs)
        assignments = context['assignments']

        for a in assignments:
            a.score = a.get_score(self.request.user)

        context['assignments'] = assignments
        context['score'] = sum(map(lambda a: a.score, assignments))
        context['point'] = sum(map(lambda a: a.point, assignments))

        return context

class AssignmentDetail(LoginRequiredMixin, DetailView):
    model = models.Assignment
    slug_field = 'name'
    context_object_name = 'assignment'

    def get_context_data(self, **kwargs):
        context = super(AssignmentDetail, self).get_context_data(**kwargs)
        assignment = context['assignment']
        submissions = models.Submission.objects.filter(assignment=assignment, user=self.request.user).order_by('-submission_date')

        context['submission_form'] = forms.SubmissionForm()
        context['submissions'] = submissions
        context['score'] = assignment.get_score(self.request.user)

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

    def get_object(self, queryset=None):
        object = super(SubmissionDetail, self).get_object(queryset)

        if object.user.id != self.request.user.id:
            raise Http404()

        return object

class SubmissionDownload(SubmissionDetail):
    def get(self, request, *args, **kwargs):
        submission = self.get_object()
        filename = os.path.basename(submission.submission_file.file.name)
        response = HttpResponse(submission.submission_file, content_type='text/plain')
        response['Content-Disposition'] = 'attachment; filename=%s' % filename
        return response

def server_status(request):
    CELERY_DESTINATION = list(inspect().ping())
    CELERY_INSPECT = inspect(destination=CELERY_DESTINATION)

    tasks = {
        'active': CELERY_INSPECT.active(),
        'scheduled': CELERY_INSPECT.scheduled(),
        'reserved': CELERY_INSPECT.reserved(),
    }

    return render(request, 'submission/server_status.html', {'tasks': tasks})
