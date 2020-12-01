from django.contrib.auth.models import User, Group
from smarthomeproj.server.models import Sensor, SensorValue, Home, Room
from rest_framework import viewsets
from rest_framework import permissions
from rest_framework import generics
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.generics import RetrieveAPIView
from rest_framework.views import APIView
from django.http import Http404


from smarthomeproj.server.serializers import UserSerializer, GroupSerializer, User1Serializer, SensorSerializer, SensorValueSerializer, RoomSerializer, HomeSerializer


class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer
    permission_classes = [permissions.IsAuthenticated]


class GroupViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = Group.objects.all()
    serializer_class = GroupSerializer
    permission_classes = [permissions.IsAuthenticated]

class UserCreate(generics.CreateAPIView):
    queryset = User.objects.all()
    serializer_class = User1Serializer
    
class SensorViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Sensor.objects.all()
    serializer_class = SensorSerializer
    permission_classes = [permissions.IsAuthenticated]

class SensorValueViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = SensorValue.objects.all()
    serializer_class = SensorValueSerializer
    permission_classes = [permissions.IsAuthenticated]

class HomeViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Home.objects.all()
    serializer_class = HomeSerializer
    permission_classes = [permissions.IsAuthenticated]

class RoomViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Room.objects.all()
    serializer_class = RoomSerializer
    permission_classes = [permissions.IsAuthenticated]
    #def list(self, request, *args, **kwargs):
     #   queryset = self.filter_queryset(self.get_queryset())
      #  return Response(queryset.values())



class LastValue(generics.ListAPIView):
    serializer_class = SensorValueSerializer
    permission_classes = [permissions.IsAuthenticated]
    def get_queryset(self):
        """
        This view should return a list of all the purchases for
        the user as determined by the username portion of the URL.
        """
        
        idsensor = self.request.query_params.get('idsensor', None)
        queryset = SensorValue.objects.all().filter(idsensor=idsensor).order_by('-created_at')[:1]
       
        return queryset