import paho.mqtt.client as mqtt

# Set the credentials for authentication
username = "jada_usr_gas"
password = "thisisnotastrongpassword@Chaga!!!"

# Set the MQTT topic and message
topic = "your/topic"
message = "your_message"

# Set the MQTT broker host and port
broker_address = "139.144.155.173"
broker_port = 1883

# Create a new MQTT client instance
client = mqtt.Client()

# Set the username and password for authentication
client.username_pw_set(username, password)

# Connect to the MQTT broker
client.connect(broker_address, broker_port)

# Publish the message to the topic
client.publish(topic, message)

# Disconnect from the MQTT broker
client.disconnect()
