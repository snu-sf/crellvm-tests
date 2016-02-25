from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.AssignmentList.as_view(), name='assignments'),
    url(r'^(?P<slug>[-\w]+)$', views.AssignmentDetail.as_view(), name='assignment'),
    url(r'^(?P<slug>[-\w]+)/skeleton$', views.AssignmentSkeleton.as_view(), name='assignment/skeleton'),
]
