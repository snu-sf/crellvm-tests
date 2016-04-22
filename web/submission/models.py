import os
import shutil

from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Submission(models.Model):
    status = models.TextField()
    user = models.ForeignKey(User)
    date = models.DateTimeField()
    opt_filename = models.TextField()
    opt_pass = models.TextField()
    main_filename = models.TextField()
    test_dir = models.TextField()
    comment = models.TextField()

    def __str__(self):
        return self.id

class TranslationUnit(models.Model):
    submission = models.ForeignKey(Submission)
    status = models.TextField()
    dirname = models.TextField()
    filename = models.TextField()

    retcode = models.IntegerField(null=True)
    stdout = models.TextField()
    stderr = models.TextField()

    def __str__(self):
        return os.path.join(self.dirname, self.filename)

class ValidationUnit(models.Model):
    translation_unit = models.ForeignKey(TranslationUnit)
    status = models.TextField()
    category = models.TextField()
    basename = models.TextField()

    retcode = models.IntegerField(null=True)
    stdout = models.TextField()
    stderr = models.TextField()

    def __str__(self):
        return self.basename
