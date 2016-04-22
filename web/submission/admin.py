from django.contrib import admin

from .models import *

# Register your models here.

admin.site.register(Submission)
admin.site.register(TranslationUnit)
admin.site.register(ValidationUnit)
