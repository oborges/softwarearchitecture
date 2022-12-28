# Business layer
#Python - Flask
from flask import Flask, request
from flask_cors import CORS
import psycopg2
import os


app = Flask(__name__)
CORS(app)


#get environment variables, populated from configmap and secrets
hostname=os.environ['db_hostname']
dbname=os.environ['db_name']
username=os.environ['db_username']
dbport=os.environ['db_port']
dbpassword=os.environ['db_password']

#build connection string
conn_str = "host=" + hostname + " port=" + dbport + " dbname=" + dbname + " user=" + username +  " password=" + dbpassword
    
@app.route('/averageAge', methods=['GET'])
def get_average_age():
  # Connect to the database
  conn = psycopg2.connect(conn_str)
  c = conn.cursor()
  
  # Calculate the average age of all users
  c.execute("SELECT ROUND(AVG(age),2) FROM users")
  captured_average = c.fetchone()[0]
  if captured_average == None:
    captured_average = 0

  avg_age = str(captured_average)
  
  #Close the connection
  conn.close()

  display_avg_age = {"averageAge": avg_age}
  return display_avg_age



@app.route('/addUser', methods=['POST'])
def process():
# Get the data from the form

  name = request.form['name']
  age = request.form['age']
  
  #Save the data to the database
  conn = psycopg2.connect(conn_str)
  c = conn.cursor()
  c.execute("INSERT INTO users (name, age) VALUES (%s, %s)", (name, age))
  conn.commit()
  conn.close()
  return {"status": "ok"}


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
