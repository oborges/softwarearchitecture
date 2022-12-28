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
###
### - IMPORTANT: you must have already have your front-end (build_front.sh)
##               and have the URL of the API endpoint set in the index.js
##               at the 'fetch()' line
##
###################################################################### 


#create the business
ibmcloud ce application create -name business --build-source https://github.com/oborges/softwarearchitecture --context-dir layered/business --cpu 1 --memory 2G

 

