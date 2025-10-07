terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  tenant_id = var.tenant_id
  client_id = var.client_id
  client_secret = var.client_secret
  features {
    
  }
}

# Resource Group
resource "azurerm_resource_group" "rg" {
  name = "tf-rg-demo"
  location = "Central India"
}