from django import forms

class SubmissionForm(forms.Form):
    opt_filename = forms.CharField()
    opt_options = forms.CharField()
    main_filename = forms.CharField()
    test_dir = forms.CharField()
