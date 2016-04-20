from django import forms

class SubmissionForm(forms.Form):
    submitted_file = forms.FileField(label='Submitted File')
