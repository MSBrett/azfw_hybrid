#!/bin/sh

# Modify this to match your subscription name
subscription='workload'

# Which Azure region do you want to deploy to
location='westus'

# Optional
prefix='avd'
domainName='avd.contoso.com'
adminUserName='azureadmin'

# externalIp=$(curl ifconfig.me/ip)

# Read the password
echo 'Set the password for the domain admininstrator account'
read adminPassword

resourceGroupName="$prefix-$location-infrastructure"
timeStamp=$(date "+%m%d%y%H%M%S")

az account set --subscription $subscription
az group create --name $resourceGroupName --location $location
az deployment group create \
    --name "CreateNetwork-$timeStamp" \
    --resource-group $resourceGroupName \
    --template-file azuredeploy.json \
    --parameters @azuredeploy.parameters.json \
    --parameters "location=$location"

az deployment group create \
    --name "CreateDomain-$timeStamp" \
    --resource-group $resourceGroupName \
    --template-file azuredeploy.json \
    --parameters @azuredeploy.parameters.json \
    --parameters "location=$location" "adminPassword=$adminPassword" "adminUserName=$adminUserName" "domainName=$domainName" "connectVpn=true" "deployDomain=true"