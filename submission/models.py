import os

from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Announcement(models.Model):
    content = models.TextField()
    date = models.DateTimeField()

    def __str__(self):
        return self.content

class Assignment(models.Model):
    name = models.SlugField(max_length=200)
    due_date = models.DateTimeField('due date')
    skeleton = models.FileField(upload_to='uploads/skeleton')

    def __str__(self):
        return self.name

    def get_point(self):
        problems = Problem.objects.filter(assignment=self.name)
        return sum(map(lambda p:p.point, problems))

    def get_score(self, user_id):
        submissions = Submission.objects.filter(assignment=self.name, user=user_id)
        return max(map(lambda s: s.score, submissions) or [0])

class Problem(models.Model):
    assignment = models.ForeignKey(Assignment)
    index = models.IntegerField(default=0)
    point = models.IntegerField(default=0)

    def __str__(self):
        return "%s.%s" % (self.assignment.name, self.index)

def submission_filename(instance, filename):
    return os.path.join('uploads/submission/', instance.user.username, filename)

class Submission(models.Model):
    assignment = models.ForeignKey(Assignment)
    user = models.ForeignKey(User)
    submission_date = models.DateTimeField('date submitted')
    submission_file = models.FileField(upload_to=submission_filename)

    status = models.TextField()
    score = models.IntegerField(default=0)
    message = models.TextField()

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
