from django.apps import AppConfig
from . import mqtt

class ServerConfig(AppConfig):
    name = 'smarthomeproj.server'

    def ready(self):
        from . import mqtt
        mqtt.client.loop_start()
        
