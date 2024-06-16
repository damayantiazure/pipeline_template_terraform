// provider "azurerm" {
//   version = ">=3.0"
//   # The "feature" block is required for AzureRM provider 2.x. 
//   features {}
// }
// terraform {
//   required_providers {
//     azurerm = {
//       source  = "hashicorp/azurerm"
//       version = "~> 2.12"
//     }
//     azapi = {
//       source = "Azure/azapi"
//       version = "0.4.0"
//     }
//   }
// }


resource "azurerm_resource_group" "rg" {
  name     = "${var.resource-group-name}-${var.environment}"
  location = "westeurope"
  
  tags = {
    environment = var.environment
  }
}

resource "azapi_resource" "symbolicname" { 
  type = "Microsoft.Communication/communicationServices@2021-10-01-preview"
  name = "abncommunicationservicedemo"
  location = "global"
  parent_id = "/subscriptions/989f76fd-5edb-4aa1-b014-f989e1918adc/resourceGroups/abndemo-rg"
  tags = {
    tagName1 = "demo"
    tagName2 = "comm"
  }
  body = jsonencode({
    properties = {
      dataLocation = "europe"
      linkedDomains = ["/subscriptions/989f76fd-5edb-4aa1-b014-f989e1918adc/resourceGroups/sentinel-rg/providers/Microsoft.Communication/emailServices/testdomaindemonstartionabn"  ]  
      
    }
  })
}
