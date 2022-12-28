######################################################################
### Before using this script:
### - make sure you have psql installed
### - create the IBM Cloud Databases for PostgreSQL
### - create the service credentials 
### - update this script with the server name, username and database
### - have the credentials in hand, you will provide them manually
###       ibmcloud plugin install code-engine
###################################################################### 

HOSTNAME=8a86ce33-aafa-47bc-bb19-db59efb0d4eb.c9v3nfod0e3fgcbd1oug.databases.appdomain.cloud
USERNAME=ibm_cloud_3d7dcca1_16c8_415c_b691_f59f20b3f792
PORT=31778
DATABASE=ibmclouddb
#create the table and the database
psql -h $HOSTNAME -U $USERNAME -p $PORT $DATABASE -f script.sql

 

