from django.urls import path, include
from django.conf.urls import url

urlpatterns = [
    url(r'^auth/', include('djoser.urls')),
    url(r'^auth/', include('djoser.urls.jwt'))
]