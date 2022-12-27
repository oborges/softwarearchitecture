# Business layer
#Python - Flask
from flask import Flask, request
import psycopg2


app = Flask(__name__)

#def get_average_age():
  # Connect to the database
#  conn = psycopg2.connect("host=localhost dbname=mydatabase user=postgres password=password")
  
#  c = conn.cursor()

  # Calculate the average age of all users
#  c.execute("SELECT AVG(age) FROM users")
#  avg_age = c.fetchone()[0]

  # Close the connection
#  conn.close()

#  avg_age = 10

#  return avg_age


@app.route('/averageAge', methods=['GET'])
def get_average_age():
  avg_age = {"averageAge": "10"}
  return avg_age

#@app.route('/process', methods=['POST'])
#def process():
#  # Get the data from the form
#  name = request.form['name']
#  age = request.form['age']

  # Save the data to the database
#  conn = psycopg2.connect("host=localhost dbname=mydatabase user=postgres password=password")
#  c = conn.cursor()
#  c.execute("INSERT INTO users (name, age) VALUES (%s, %s)", (name, age))
#  conn.commit()
#  conn.close()

  # Calculate the average age of all users
#  avg_age = get_average_age()

#  return "User saved. Average age of all users: " + str(avg_age)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
