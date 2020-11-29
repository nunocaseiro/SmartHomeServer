"""smarthomeproj URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import include, path
from django.contrib import admin
from rest_framework import routers
from django.views.generic import TemplateView
from smarthomeproj.server import views
from smarthomeproj.server import models
from django.conf.urls import url

router = routers.DefaultRouter()
router.register(r'users', views.UserViewSet)
router.register(r'groups', views.GroupViewSet)
router.register(r'sensors', views.SensorViewSet)
router.register(r'sensorsvalues', views.SensorValueViewSet)
router.register(r'homes',views.HomeViewSet)
router.register(r'rooms',views.RoomViewSet)

admin.site.register(models.Sensor)
admin.site.register(models.SensorValue)
admin.site.register(models.Home)
admin.site.register(models.Room)


# Wire up our API using automatic URL routing.
# Additionally, we include login URLs for the browsable API.
urlpatterns = [
    path('api/', include(router.urls)),
    path('api/admin/', admin.site.urls),
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework')),
    path('account/register', views.UserCreate.as_view()),
     url(r'^$', TemplateView.as_view(template_name='index.html')),
]
