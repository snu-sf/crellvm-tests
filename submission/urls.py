from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.AnnouncementList.as_view(), name='announcements'),

    url(r'^assignment$', views.AssignmentList.as_view(), name='assignments'),
    url(r'^assignment/(?P<slug>[-\w]+)$', views.AssignmentDetail.as_view(), name='assignment'),
    url(r'^assignment/(?P<slug>[-\w]+)/skeleton$', views.AssignmentSkeleton.as_view(), name='assignment/skeleton'),
    url(r'^assignment/(?P<slug>[-\w]+)/submit$', views.AssignmentSubmit.as_view(), name='assignment/submit'),

    url(r'^submission/(?P<pk>\d+)$', views.SubmissionDetail.as_view(), name='submission'),
    url(r'^submission/(?P<pk>\d+)/download$', views.SubmissionDownload.as_view(), name='submission/download'),

    url(r'^server_status$', views.server_status, name='server_status'),
]
