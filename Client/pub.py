# publisher
import paho.mqtt.client as mqtt

client = mqtt.Client()
client.connect('localhost', 1883)

while True:
    client.publish("jada/test", input('Message : '))