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


#create the project
ibmcloud ce project create --name layeredarchitecture --endpoint public

#create the application
ibmcloud ce application create -name front --build-source https://github.com/oborges/softwarearchitecture --context-dir layered/front --cpu 0.25 --memory 0.5G

 

