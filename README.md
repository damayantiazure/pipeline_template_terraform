# AzureDevOpsPipelines-Templates

Using Terraform in a DevOps pipeline involves integrating Terraform scripts to manage infrastructure as code (IaC) within your CI/CD process. 
This is an example, where we will create Infrastructure as code using terraform template and deploy the infrastructure in Azure Subscriptions for Dev, Test & Prod

# Example with Azure DevOps
# Prerequisites:

Azure DevOps account.
Terraform installed on the build agent.
Service principal for Terraform to authenticate with Azure.
Terraform Configuration Files:
Create your Terraform configuration files (main.tf, variables.tf, outputs.tf).
- Create a folder with name Terraform and add the terraform files under that for your infrastructure as code

![image](https://github.com/damayantiazure/pipeline_template_terraform/assets/92169356/d0967c69-a6cf-482b-afdc-d47e11eb34c9)


# Azure DevOps Pipeline Configurations:
In this example we are going to create two pipeline templateswith parameters for deploying infrastructure 
Create two pipeline templates (.yml files)
1. template-terraform-stages.yml  (For deploying the infra as code on dev, test, prod)
2. template-create-terraform-backend.yml ()
