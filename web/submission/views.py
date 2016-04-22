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

from . import models, forms, tables, tasks

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

            submission = models.Submission(status='PENDING',
                                           user=request.user,
                                           date=datetime.now(),
                                           opt_filename=opt_filename,
                                           opt_options=opt_options,
                                           main_filename=main_filename,
                                           test_dir=test_dir)
            submission.save()
            tasks.run_submission(submission)
            return HttpResponseRedirect(reverse('submission', args=[submission.id]))
        else:
            return HttpResponse('Bad Submission')

class SubmissionDetail(LoginRequiredMixin, DetailView):
    model = models.Submission
    context_object_name = 'submission'

    def get_context_data(self, **kwargs):
        context = super(SubmissionDetail, self).get_context_data(**kwargs)

        submission = context['submission']
        validation_units = models.ValidationUnit.objects.filter(translation_unit__submission=submission)
        context['validation_units'] = validation_units

        table = tables.ValidationUnitTable(validation_units)
        RequestConfig(self.request, paginate={'per_page': 200}).configure(table)
        context['table'] = table

        return context

class ValidationUnitDetail(LoginRequiredMixin, DetailView):
    model = models.ValidationUnit
    context_object_name = 'validation_unit'

    def get_context_data(self, **kwargs):
        context = super(ValidationUnitDetail, self).get_context_data(**kwargs)
        vunit = context['validation_unit']

        if vunit.status != 'PENDING' and vunit.status != 'SUCCESS':
            vunitdir = os.path.join(tasks.get_rundir(vunit.translation_unit.submission.id),
                                    'vunits',
                                    vunit.translation_unit.dirname)
            with open(os.path.join(vunitdir, vunit.basename + '.hint.json'), 'r') as hint_file:
                context['hint_file'] = hint_file.read()
            result = tasks.run(['git', 'diff', '--no-index',
                                os.path.join(vunitdir, vunit.basename + '.src.ll'),
                                os.path.join(vunitdir, vunit.basename + '.tgt.ll')])
            context['diff_string'] = result['stdout']

        return context

def server_status(request):
    CELERY_DESTINATION = list(inspect().ping())
    CELERY_INSPECT = inspect(destination=CELERY_DESTINATION)

    tasks = {
        'active': CELERY_INSPECT.active(),
        'scheduled': CELERY_INSPECT.scheduled(),
        'reserved': CELERY_INSPECT.reserved(),
    }

    return render(request, 'submission/server_status.html', {'tasks': tasks})
