import os

from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Submission(models.Model):
    status = models.TextField()
    user = models.ForeignKey(User)
    date = models.DateTimeField()
    opt_filename = models.TextField()
    opt_options = models.TextField()
    main_filename = models.TextField()
    test_dir = models.TextField()

class ValidationUnit(models.Model):
    submission = models.ForeignKey(Submission)
    status = models.TextField()
    category = models.TextField()
    filename = models.TextField()
    src = models.TextField()
    tgt = models.TextField()
    hint = models.TextField()
