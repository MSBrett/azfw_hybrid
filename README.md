
# Notes

## Deploy

az account set --subscription workload
az group create --name wvd-westus-infrastructure --location westus
az deployment group create \
    --resource-group wvd-westus-infrastructure \
    --template-file infrastructure.json \
    --parameters "adminPassword=P@$$w0rd!@#" "linuxVMCount=0" "windowsServerCount=1" "WvdSessionHostCount=2" "deployVpnGateway=false" "prefix=wvd"

## Ports
- TCP: 53, 88, 135, 139, 389, 445, 636, 3268, 3269, 49152-65535
- UDP: 53, 123, 137, 138, 389, 123, 49152-65536
- ICMP

## DCPromo

Install-WindowsFeature -Name AD-Domain-Services
Install-ADDSForest -DomainName "wvd.contoso.com" -DomainNetbiosName "WVD" -CreateDNSDelegation:$false -DomainMode WinThreshold -ForestMode WinThreshold -InstallDns:$true