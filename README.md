# AzureDevOpsPipelines-Templates

Using Terraform in a DevOps pipeline involves integrating Terraform scripts to manage infrastructure as code (IaC) within your CI/CD process. 
This is an example, where we will create Infrastructure as code using terraform template and deploy the infrastructure in Azure Subscriptions for Dev, Test & Prod

# Example with Azure DevOps
# Prerequisites:

Azure DevOps account.
install terraform tasks from marcket place, incase its not installed yet: https://marketplace.visualstudio.com/items?itemName=ms-devlabs.custom-terraform-tasks
Terraform installed on the build agent.
Service principal for Terraform to authenticate with Azure.
Terraform Configuration Files:
Create your Terraform configuration files (main.tf, variables.tf, outputs.tf).
- Create a folder with name Terraform and add the terraform files under that for your infrastructure as code

![image](https://github.com/damayantiazure/pipeline_template_terraform/assets/92169356/d0967c69-a6cf-482b-afdc-d47e11eb34c9)

# Azure DevOps Pipeline Configurations:
In this example we are going to create two pipeline templateswith parameters for deploying infrastructure 
Create two pipeline templates (.yml files) ((Check in the repo))
1. template-terraform-stages.yml  (For deploying the infra as code on dev, test, prod)
2. template-create-terraform-backend.yml (For deploying backends, resource groups)

![image](https://github.com/damayantiazure/pipeline_template_terraform/assets/92169356/611af05b-506c-4d6f-96f5-3d6450a2c51b)

# Create a pipline and call the previousely created 2 pipeline templates
azure-pipelines1.yml (Check in the repo)
![image](https://github.com/damayantiazure/pipeline_template_terraform/assets/92169356/ed0e93dd-01a6-48ed-aef3-6487b7ba728e)
Create a new service connection with name AzureServiceConnection to connect to Azure Service before deploying resources.
or Replace the  backendServiceArm: 'AzureServiceConnection' with your service connection, if yopu have already created

Follow the steps from LOP, Pipelines lab - how to create a service connection and use in your pipeline

![image](https://github.com/damayantiazure/pipeline_template_terraform/assets/92169356/ae00f420-28b0-4ffe-b2b4-4dad95cf24d2)

Save your pipeline and run

The pipeline looks like this:
![image](https://github.com/damayantiazure/pipeline_template_terraform/assets/92169356/8ca5cd18-e50e-4d5a-99da-4b6de5c35c8e)

After a successful deployment, you can go to your Azure subscription and check the below resource groups should be created 

![image](https://github.com/damayantiazure/pipeline_template_terraform/assets/92169356/224912b1-fe52-4da4-b2f7-63943ec31a06)

![image](https://github.com/damayantiazure/pipeline_template_terraform/assets/92169356/6fab8c2e-9c61-4834-8cd4-e4aee58f1987)

![image](https://github.com/damayantiazure/pipeline_template_terraform/assets/92169356/a0ea4957-15f8-4402-ac23-faf7a9db11d3)


