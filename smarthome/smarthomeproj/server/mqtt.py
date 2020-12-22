import paho.mqtt.client as mqtt
import logging


logger = logging.getLogger("django")
# The callback for when the client receives a CONNACK response from the server.
def on_connect(client, userdata, flags, rc):
    from .models import Room
    logger.error("Connected with result code "+str(rc))
    allrooms = Room.objects.all().filter(testing=False)
    for room in allrooms:
        client.subscribe("rooms/"+room.name)
        logger.info("rooms/"+room.name)
    

# The callback for when a PUBLISH message is received from the server.
def on_message(client, userdata, msg):
    logger.info(str(msg.payload))
    

client = mqtt.Client()
client.username_pw_set("smarthome","smarthome")
client.on_connect = on_connect
client.on_message = on_message

client.connect("161.35.8.148", 1883, 60)