from django.apps import AppConfig

class ServerConfig(AppConfig):
    name = 'smarthomeproj.server'
    run_already = False

    def ready(self):
        if not self.run_already:
            self.run_already = True
            from . import mqtt
            mqtt.client.loop_start()

    #def ready(self):
    #    from . import mqtt
    #    mqtt.client.loop_start()
        
