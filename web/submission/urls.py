from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.SubmissionList.as_view(), name='submissions'),
    url(r'^submission/(?P<pk>\d+)$', views.SubmissionDetail.as_view(), name='submission'),

    url(r'^validation_unit/(?P<pk>\d+)$', views.ValidationUnitDetail.as_view(), name='validation_unit'),

    url(r'^server_status$', views.server_status, name='server_status'),
]
