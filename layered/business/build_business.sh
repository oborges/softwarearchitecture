#!/bin/bash
######################################################################
### Before using this script:
### - login first with command: ibmcloud login
### - if you have more than 1, select target account with 
###       ibmcloud target -c <account_id>
### - also, select a region:
###       ibmcloud target -r <region>
###
### - make sure you have the code engine plugin installed before using this
###       ibmcloud plugin install code-engine
###################################################################### 


#creates the config map la-secrets
echo Please provide the information from your IBM Cloud PostgreSQL Database
read -p 'database hostname: ' HOSTNAME
read -p 'database name: ' DBNAME
read -p 'database port: ' DBPORT
read -p 'database username: ' DBUSERNAME
read -p 'database password:' DBPASSWORD
ibmcloud ce configmap create --name la-cm --from-literal db_hostname=$HOSTNAME --from-literal db_name=$DBNAME --from-literal db_port=$DBPORT --from-literal db_username=$DBUSERNAME

#create the secret
ibmcloude ce secret create --name la-secrets --from-literal db_password=$DBPASSWORD

#create the business layer
ibmcloud ce application create -name business --build-source https://github.com/oborges/softwarearchitecture --context-dir layered/business --cpu 1 --memory 2G --env-from-configmap la-cm --env-from-secret la-secrets
 

