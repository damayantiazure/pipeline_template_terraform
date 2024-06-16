terraform {
  required_providers {
    azapi = {
      source  = "Azure/azapi"
      version = "=0.4.0"
    }
     azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.12"
    }
  }
}
provider "azapi" {
  # More information on the authentication methods supported by
  # the AzApi Provider can be found here:
  # https://registry.terraform.io/providers/Azure/azapi/latest/docs

  # subscription_id = "..."
  # client_id       = "..."
  # client_secret   = "..."
  # tenant_id       = "..."
}

// azurerm provider
provider "azurerm" {
  features {}
}
