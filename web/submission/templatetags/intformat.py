from django import template
import os

register = template.Library()

@register.filter
def intformat(value):
    return '%04d' % value
