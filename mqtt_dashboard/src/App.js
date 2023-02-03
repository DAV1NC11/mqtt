import React, { useState, useEffect } from 'react';
import mqtt from 'mqtt';
import url from 'url';
import buffer from 'buffer';


function MQTTDashboard() {
  const [clients, setClients] = useState([]);
  useEffect(() => {
    const client = mqtt.connect("wss://broker.hivemq.com:443/mqtt");
  
    client.on("connect", () => {
      client.subscribe("clients/connected");
    });
  
    client.on("message", (topic, payload) => {
      if (topic === "clients/connected") {
        setClients(JSON.parse(payload.toString()));
      }
    });
  
    return () => {
      client.end();
    };
  }, []);
  
  
  return (
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <table>
      <thead>
        <tr>
          <th>Client ID</th>
          <th>Topics</th>
          <th>Messages Published</th>
          <th>Messages Received</th>
        </tr>
      </thead>
      <tbody>
        {clients.map(client => (
        <tr key={client.id}>
        <td>{client.id}</td>
        <td>{client.topics.join(", ")}</td>
        <td>{client.messagesPublished}</td>
        <td>{client.messagesReceived}</td>
        </tr>
    ))}
      </tbody>
    </table>
</meta>
    // Render the dashboard UI using the `clients` state variable
  );
}

export default MQTTDashboard;