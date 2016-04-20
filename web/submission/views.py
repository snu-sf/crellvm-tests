import os

from django.contrib.auth.mixins import LoginRequiredMixin
from django.http import Http404, HttpResponse, HttpResponseRedirect
from django.shortcuts import render
from django.views.generic import ListView, DetailView
from django.core.urlresolvers import reverse
from django_tables2 import RequestConfig
from datetime import datetime
from celery.task.control import inspect
import shutil

from . import models, forms, tasks, tables

# Create your views here.

class SubmissionList(LoginRequiredMixin, ListView):
    model = models.Submission
    context_object_name = 'submissions'

    def get_context_data(self, **kwargs):
        context = super(SubmissionList, self).get_context_data(**kwargs)
        context['submission_form'] = forms.SubmissionForm()

        submissions = context['submissions']
        table = tables.SubmissionTable(submissions, order_by='-date')
        RequestConfig(self.request, paginate={'per_page': 200}).configure(table)
        context['table'] = table

        return context

    def post(self, request, *args, **kwargs):
        submission_form = forms.SubmissionForm(request.POST, request.FILES)

        if submission_form.is_valid():
            opt_filename = submission_form.cleaned_data['opt_filename']
            opt_options = submission_form.cleaned_data['opt_options']
            main_filename = submission_form.cleaned_data['main_filename']
            test_dir = submission_form.cleaned_data['test_dir']

            submission = models.Submission(status = 'PENDING',
                                           user=request.user,
                                           date=datetime.now(),
                                           opt_filename=opt_filename,
                                           opt_options=opt_options,
                                           main_filename=main_filename,
                                           test_dir=test_dir)
            submission.save()

            rundir = tasks.get_rundir(submission.id)
            os.makedirs(rundir)
            shutil.copy(opt_filename, os.path.join(rundir, 'opt'))
            shutil.copy(main_filename, os.path.join(rundir, 'main.native'))

            tasks.process_submission.delay(submission.id)
            return HttpResponseRedirect(reverse('submission', args=[submission.id]))
        else:
            return HttpResponse('Bad Submission')

class SubmissionDetail(LoginRequiredMixin, DetailView):
    model = models.Submission
    context_object_name = 'submission'

    def get_context_data(self, **kwargs):
        context = super(SubmissionDetail, self).get_context_data(**kwargs)
        submission = context['submission']
        validation_units = models.ValidationUnit.objects.filter(submission=submission)
        context['validation_units'] = validation_units
        return context

class ValidationUnitDetail(LoginRequiredMixin, DetailView):
    model = models.ValidationUnit
    context_object_name = 'validation_unit'

def server_status(request):
    CELERY_DESTINATION = list(inspect().ping())
    CELERY_INSPECT = inspect(destination=CELERY_DESTINATION)

    tasks = {
        'active': CELERY_INSPECT.active(),
        'scheduled': CELERY_INSPECT.scheduled(),
        'reserved': CELERY_INSPECT.reserved(),
    }

    return render(request, 'submission/server_status.html', {'tasks': tasks})
