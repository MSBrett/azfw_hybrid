
# Azure technologies used in this lab
- Azure Firewall
- Azure Resource Manager (and DSC)
- Log Analytics
- Route Tables
- vNet Gateways (with BGP)
- vNet Peering

# Lab Environment
![Image of Lab Environment](https://github.com/MSBrett/azfw_hybrid/raw/master/resources/AZFW_AIO.png)

This script will deploy 4 virtual networks in a hub-spoke topology.
- An Azure Firewall and VPN Gateway are deployed in the hub network.
- A Windows Domain is deployed in the "Directory" spoke vNet.
- A Windows VM is deployed in the "WVD" spoke vNet
- A Windows VM is deployed in the 'oprem' vNet.
- Routing tables have been created to designate Azure Firewall as the next hop IP address in Azure.
- Route propagation has been disabled on the vNet peering connections.

