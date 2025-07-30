terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "key"
  tenant_id = "key"
  client_id = "key"
  client_secret = "key"
  features {
    
  }
}

resource "azurerm_resource_group" "example" {
  name     = "rg-storage"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "myfirstnetajistorage"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}