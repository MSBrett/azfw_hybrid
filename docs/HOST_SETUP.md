# Add Session Hosts to Azure Virtual Desktop

## Obtain the registration key from the Azure Portal

- Navigate to the host pool blade in Azure Virtual Destop

![Host Pool](https://github.com/MSBrett/azfw_hybrid/raw/master/resources/Host_Pool.png)

- Click the "Registration Key" button and make a copy of the key

![Registration Key](https://github.com/MSBrett/azfw_hybrid/raw/master/resources/Registration_Key.png)

## Register the session host VM to the Azure Virtual Desktop host pool

Registering the virtual machines to a Azure Virtual Desktop host pool is as simple as installing the Azure Virtual Desktop agents.
To register the Azure Virtual Desktop agents, do the following on the session host VM:

- Connect to the virtual machine with the credentials you provided when creating the virtual machine.
- Download and install the Azure Virtual Desktop Agent.
- Download the [Azure Virtual Desktop Agent](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWrmXv)
- Run the installer.
  - When the installer asks you for the registration token, enter the value you got from the Azure Portal.
- Download and install the Azure Virtual Desktop Agent Bootloader.
- Download the [Azure Virtual Desktop Agent Bootloader](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWrxrH).
- Run the installer.

## Confirm the VM is registered with Azure Virtual Desktop

- Click the "Total Machines" button on overview blade for the hostpool

![Wait for VM](https://github.com/MSBrett/azfw_hybrid/raw/master/resources/Confirm_VM_1.png)

- Wait for the VM to register and show as healthy

![Confirm VM Health](https://github.com/MSBrett/azfw_hybrid/raw/master/resources/Confirm_VM_2.png)