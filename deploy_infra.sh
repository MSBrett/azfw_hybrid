#!/bin/sh
prefix='wvd6'
domainName='wvd.contoso.com'
location='westus'
subscription='workload'
adminUserName='azureadmin'
serverCount=1
clientCount=1

# Read the password
echo 'Enter a password for the domain admininstrator account'
read adminPassword

resourceGroupName="$prefix-$location-infrastructure"

az account set --subscription $subscription
az group create --name $resourceGroupName --location $location
az deployment group create \
    --resource-group $resourceGroupName \
    --template-file infrastructure.json \
    --parameters @infrastructure.parameters.json \
    --parameters "adminPassword=$adminPassword" "adminUserName=$adminUserName" "deployDomain=false" "serverCount=0" "clientCount=0" "deployVpnGateway=true" "domainName=$domainName" "location=$location"


az deployment group create \
    --resource-group $resourceGroupName \
    --template-file infrastructure.json \
    --parameters @infrastructure.parameters.json \
    --parameters "adminPassword=$adminPassword" "adminUserName=$adminUserName" "deployDomain=true" "serverCount=$serverCount" "clientCount=$clientCount" "deployVpnGateway=true" "domainName=$domainName" "location=$location"

