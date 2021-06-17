## Prerequisites

- Windows users should use the Windows Subsystem for Linux to execute the script.  Mac and Linux users may use their terminal of choice.

- The script requires the [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli).


## Pre-deployment

- You will need to update the deploy_infra.sh script with the name of the azure subscription you want to deploy the environment to.

- You should also update the deploy_infra.sh script with the Azure Region you want to deploy the environment to.

## Deploying the environment

To make the script executable run the following in your terminal of choice:

```bash
chmod +x ./deploy.sh
```

To deploy the environment run the script:

```bash
./deploy.sh
```

## Confirm the deployment was successful

Navigate to the "Deployments" blade of the resource group the lab was deployed to

![Deployment Success](https://github.com/MSBrett/azfw_hybrid/raw/master/resources/Deployment_success.png)

