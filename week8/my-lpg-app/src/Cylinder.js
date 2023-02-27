import React, { useState, useEffect } from 'react';
import './Cylinder.css';
import { Pool } from 'pg';

const pool = new Pool({
  user: 'mqttgas1',
  host: '139.144.155.173',
  database: 'mqttgasdb',
  password: 'wakilungya**',
  port: 1883,
});

function Cylinder() {
  const [level, setLevel] = useState(0);

  useEffect(() => {
    const intervalId = setInterval(() => {
      pool.query('SELECT level FROM cylinder_data ORDER BY created_at DESC LIMIT 1', (error, result) => {
        if (error) {
          console.error('Error fetching data', error);
        } else {
          const fetchedLevel = result.rows[0].level;
          setLevel(fetchedLevel);
        }
      });
    }, 50);

    return () => clearInterval(intervalId);
  }, []);

  const cylinderStyle = {
    height: '300px',
    width: '100px',
    backgroundColor: 'silver',
    position: 'relative',
    margin: '50px auto'
  };

  const fillStyle = {
    position: 'absolute',
    bottom: 0,
    left: 0,
    width: '100%',
    backgroundColor: 'orange',
    height: `${level}%`
  };

  return (
    <div className="Cylinder">
      <div style={cylinderStyle}>
        <div style={fillStyle}></div>
      </div>
      <p>{`Level: ${level}%`}</p>
    </div>
  );
}

export default Cylinder;
