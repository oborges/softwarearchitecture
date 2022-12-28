This is an example of a Layered Architecture Style

We are leveraging IBM Cloud to build a simple app with 3 layers:

- The front-end layer, which consists of a code engine container running nginx and exposing a simple HTML+JS+CSS Front-end, which calls the Business layer for the average age of all users and also allows to inset new users

- The business layer, a code engine container using python/flask, with two API endpoints:
  - /addUser: adds a new user to the database
  - /averageAge: gets the average age of all users in the database

- The database layer, which is a IBM Cloud PostgreSQL database-as-a-service (DBaaS)


Requirements
You must have:
- an IBM Cloud account
- IBM Cloud CLI installed
- IBM Cloud CLI code engine plugin (ibmcloud plugin install code-engine)
- Psql tool installed


Clone this repo so you can change the files and scripts when necessary

Build steps:
Start first with the database layer, then business and finally the front-end

Database Layer:
- Create the PostgreSQL database using the IBM Cloud interface, you can use the minimum values for vCPU and Memory
- create a credential for the database
- edit the build_db.sh and replace the values of HOST, USERNAME, PORT, DATABASE with the ones of your new created instance
- run the build_db.sh to create the database mydb and the table users
- Check if the database and the table was created using psql

Business Layer:
- Provide the information from the credentials of the database layer
- Annotate the address of the endpoint

Front-End Layer:
- Replace the address of the business layer endpoints in the index.js file (fetch() statements) 


