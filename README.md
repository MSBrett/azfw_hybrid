# Notes
This ARM template will deploy 4 virtual networks in a hub-spoke topology.
- One spoke connects to the hub via vNet peering.
- The other connects to the hub via a BGP enabled IPSec VPN.
- Azure Firewall is deployed in the hub vNet.
- Routing tables have been created to designate Azure Firewall as the next hop IP address.
- Route propagation has been disabled on the vNet peering connections.
- A domain controller is 


![HUB Spoke Topology](https://docs.microsoft.com/en-us/azure/architecture/reference-architectures/hybrid-networking/images/hub-spoke.png)

## Deploy

Modify and run the deploy_infra.sh script.  At a minimum you will need to change the subscription name.

## Ports used by WVD hosts to communicate with the DC
- TCP: 53, 88, 135, 139, 389, 445, 636, 3268, 3269, 49152-65535
- UDP: 53, 123, 137, 138, 389, 123, 49152-65536
- ICMP
