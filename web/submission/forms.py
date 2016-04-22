from django import forms

class SubmissionForm(forms.Form):
    opt_filename = forms.CharField()
    opt_pass = forms.CharField()
    main_filename = forms.CharField()
    test_dir = forms.CharField()
    comment = forms.CharField()
