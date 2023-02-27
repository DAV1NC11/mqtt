import pg8000

# Connect to the PostgreSQL database
conn = pg8000.connect(
    host="139.144.155.173",
    database="mqttgasdb",
    user="mqttgas1",
    password="wakilungya**"
)

# Create a cursor object
cur = conn.cursor()

# Execute the SELECT query to retrieve the last record
cur.execute("SELECT reading FROM test ")

# Fetch the last record
last_record = cur.fetchone()

# Close the cursor and database connection
cur.close()
conn.close()

# Print the last record
print(last_record)