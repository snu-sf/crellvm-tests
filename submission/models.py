from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Assignment(models.Model):
    name = models.SlugField(max_length=200)
    due_date = models.DateTimeField('due date')
    skeleton = models.FileField(upload_to='uploads/skeleton')

    def __str__(self):
        return self.name

class Problem(models.Model):
    assignment = models.ForeignKey(Assignment)
    index = models.IntegerField(default=0)
    point = models.IntegerField(default=0)

    def __str__(self):
        return "%s.%s" % (self.assignment.name, self.index)

class Submission(models.Model):
    assignment = models.ForeignKey(Assignment)
    user = models.ForeignKey(User)
    submission_date = models.DateTimeField('date submitted')

    def __str__(self):
        return "%s.%s.%s" % (self.assignment.name, self.user.username, self.id)

class File(models.Model):
    submission = models.ForeignKey(Submission)
    index = models.IntegerField(default=0)
    content = models.TextField()
    message = models.TextField()
    point = models.IntegerField(default=0)

    def __str__(self):
        return "%s.%s.%s" % (self.submission.id, self.index)
