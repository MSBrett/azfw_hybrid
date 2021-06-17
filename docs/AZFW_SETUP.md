# Configuring Azure Firewall

Perform the following steps to configure the Azure Firewall for secure access to the lab environment.

## Determine your external IP address

To make the script executable run the following in your terminal of choice:

```bash
curl ifconfig.me/ip
```

## Determine the external IP address of the Firewall

You can determine the external IP of your firewall by inspecting the pip-firewall public IP address

![Firewall IP](https://github.com/MSBrett/azfw_hybrid/raw/master/resources/Firewall_IP.png)

## Add NAT rules for each VM

For the purposes of this lab we will create DNAT rules on the Azure Firewall to allow RDP access to the VMs.  In most scenarios it would be better to use Azure Bastion, but seeing as it won't be able to communicate with our 'onpremise' VM we'll use DNAT on the firewall.  To do so we're going to create a NAT Rule Collection with the following rules:

### NAT rules

| Name | Protocol | Source Type | Source           | Destination Address  | Destination Ports | Translated Address | Translated Ports |
|------|----------|-------------|------------------|----------------------|-------------------|--------------------|------------------|
| DC   | Both     | IP Address  | Your external IP | Firewall external IP | 3389              | 10.129.0.4         | 3389             |
| AVD  | Both     | IP Address  | Your external IP | Firewall external IP | 3390              | 10.130.0.4         | 3389             |
| SRV  | Both     | IP Address  | Your external IP | Firewall external IP | 3391              | 10.131.0.4         | 3389             |

## Create the NAT rule collection

Navigate to the 'Rules (Classic)' blade on the Azure Firewall and add a NAT rule
![Add NAT - Begin](https://github.com/MSBrett/azfw_hybrid/raw/master/resources/Add_NAT_1.png)

Add a NAT rule for the Domain Controller and click save
![Add NAT - DC](https://github.com/MSBrett/azfw_hybrid/raw/master/resources/Add_NAT_2.png)

Add a NAT rule for the Azure Virtual Desktop host and click save
![Edit NAT - AVD Host](https://github.com/MSBrett/azfw_hybrid/raw/master/resources/Edit_NAT_1.png)

Add a NAT rule for the 'onpremise' service host and click save
![Edit NAT - Onprem Server](https://github.com/MSBrett/azfw_hybrid/raw/master/resources/Edit_NAT_2.png)


## Test RDP Connectivity

Assuming athe Firewall's external IP address is **138.91.160.116** one could execute the following on Windows to test connectivity to each VM:

```cmd
mstsc /v 138.91.160.116:3389
mstsc /v 138.91.160.116:3390
mstsc /v 138.91.160.116:3391
```

On a Mac you can use the Remote Desktop Connection Cetner
![MAC RDP](https://github.com/MSBrett/azfw_hybrid/raw/master/resources/RDP_Connection_Center.png)

## Secure the Domain Controllers

- TCP: 53, 88, 135, 139, 389, 445, 636, 3268, 3269, 49152-65535
- UDP: 53, 123, 137, 138, 389, 123, 49152-65536
- ICMP (slow link detection for GPO)
