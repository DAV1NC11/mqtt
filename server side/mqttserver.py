import paho.mqtt.client as mqtt
import sqlite3
from datetime import datetime

# MQTT settings
MQTT_BROKER = "localhost"
MQTT_PORT = 1883
MQTT_TOPIC = "#"
MQTT_QOS = 0

# Database settings
DB_NAME = "mqttgas.db"

# Callback function for when a message is received
def on_message(client, userdata, message):
    print("Received!")
    # Get the device name and message from the MQTT message
    device_na = message.topic.split("/")[-1]
    device_name = device_na.replace(":", "_")
    message_payload = message.payload.decode("utf-8")

    # Open a connection to the database
    conn = sqlite3.connect(DB_NAME)
    c = conn.cursor()

    # Check if the table for the device exists
    table_name = f"table_{device_name}"
    c.execute(f"SELECT name FROM sqlite_master WHERE type='table' AND name='{table_name}'")
    table_exists = c.fetchone() is not None

    # Create a new table if the table does not exist
    if not table_exists:
        c.execute(f"CREATE TABLE {table_name} (time text, message text)")

    # Insert the message into the table
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    c.execute(f"INSERT INTO {table_name} (time, message) VALUES (?, ?)", (timestamp, message_payload))
    conn.commit()

    # Close the database connection
    conn.close()
    print("Data Saved!")

# Set up the MQTT client
client = mqtt.Client()
client.on_message = on_message
client.connect(MQTT_BROKER, MQTT_PORT)
client.subscribe(MQTT_TOPIC, MQTT_QOS)

# Start the MQTT client loop
client.loop_forever()
