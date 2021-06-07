#!/bin/sh
prefix='wvd'
domainName='wvd.contoso.com'
location='westus'
subscription='workload'
adminUserName='azureadmin'
deployDomain='true'
deployVpnGateway='true'
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
    --parameters "adminPassword=$adminPassword" "adminUserName=$adminUserName" "deployDomain=$deployDomain" "serverCount=$serverCount" "clientCount=$clientCount" "deployVpnGateway=$deployVpnGateway" "domainName=$domainName" "location=$location"