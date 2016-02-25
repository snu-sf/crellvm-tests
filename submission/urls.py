from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.AssignmentList.as_view()),
    url(r'^(?P<slug>[-\w]+)$', views.AssignmentDetail.as_view()),
]
