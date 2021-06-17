
# Azure technologies used in this lab

- Azure Active Directory
- Azure Firewall
- Azure Resource Manager (and DSC)
- Azure Virtual Desktop
- Log Analytics
- Route Tables
- vNet Gateways (with BGP)
- vNet Peering

# Lab Environment

![Image of Lab Environment](https://github.com/MSBrett/azfw_hybrid/raw/master/resources/AZFW_AIO.png)

The lab script will deploy 4 virtual networks in a hub-spoke topology.

- An Azure Firewall and VPN Gateway are deployed in the hub network.
- A Windows Domain is deployed in the "Directory" spoke vNet.
- A Windows VM is deployed in the "WVD" spoke vNet
- A Windows VM is deployed in the 'oprem' vNet.
- Routing tables have been created to designate Azure Firewall as the next hop IP address in Azure.
- Route propagation has been disabled on the vNet peering connections.

# Lab

- [Lab Deployment](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/DEPLOY.md)
  - [Prerequisites](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/DEPLOY.md#prerequisites)
  - [Deploy the environment](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/DEPLOY.md#deploying-the-environment)
- [Firewall Setup](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AZFW_SETUP.md)
  - [Gather Information](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AZFW_SETUP.md#gather-information)
  - [NAT Rules](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AZFW_SETUP.md#nat-rules)
    - [NAT Rule Details](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AZFW_SETUP.md#nat-rule-details)
    - [Create the NAT rule collection](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AZFW_SETUP.md#create-the-nat-rule-collection)
    - [Test RDP Connectivity](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AZFW_SETUP.md#test-rdp-connectivity)
  - [Network Rules](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AZFW_SETUP.md#network-rules)
    - [Domain Controller Network Rule](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AZFW_SETUP.md#domain-controller--network-rule)
    - [Azure Virtual Desktop Network Rule](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AZFW_SETUP.md#azure-virtual-desktop-network-rule)
    - [General Connectivity Network Rule](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AZFW_SETUP.md#general-connectivity-network-rule)
  - [Application Rules](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AZFW_SETUP.md#application-rules)
    - [Azure Virtual Desktop Application etwork Rule](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AZFW_SETUP.md#azure-virtual-desktop-application-rule)
    - [Blocked Websites Application Rule](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AZFW_SETUP.md#blocked-websites-application-rule)
    - [Allowed Websites Application Rule](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AZFW_SETUP.md#allowed-websites-application-rule)
- [Configure Azure Virtual Desktop](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AVD_SETUP.md)
- [Add Session Hosts to Azure Virtual Desktop](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/HOST_SETUP.md)
  - [Obtain the registration key from the Azure Portalp](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/HOST_SETUP.md#obtain-the-registration-key-from-the-azure-portal)
  - [Register the session host VM to the Azure Virtual Desktop host pool](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/HOST_SETUP.md#register-the-session-host-vm-to-the-azure-virtual-desktop-host-pool)
  - [Confirm the VM is registered with Azure Virtual Desktop](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/HOST_SETUP.md#confirm-the-vm-is-registered-with-azure-virtual-desktop)
- [Configure Authentication](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AUTH_SETUP.md)
  - [Create a user account in Azure Active Directory](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AUTH_SETUP.md#create-a-user-account-in-azure-active-directory)
  - [Add the UPN suffix to the domain](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AUTH_SETUP.md#add-the-upn-suffix-to-the-domain)
  - [Create a user account in Windows Active Directory](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AUTH_SETUP.md#create-a-user-account-in-windows-active-directory)
  - [Grant access to Azure Virtual Desktop](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/AUTH_SETUP.md#grant-access-to-azure-virtual-desktop)
- [Azure Virtual Desktop Client Configuration](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/CLIENT_SETUP.md)
  - [Client Configuration](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/CLIENT_SETUP.md)
  - [Confirm Configuration](https://github.com/MSBrett/azfw_hybrid/blob/master/docs/CLIENT_SETUP.md)
