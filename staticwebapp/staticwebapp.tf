terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
    subscription_id = var.subscription_id
    tenant_id = var.tenant_id
    client_id = var.client_id
    client_secret = var.client_secret

    features {}
}

#=================================
# Resource Group
#=================================
resource "azurerm_resource_group" "rg" {
    name            = "tfrg-azurerm-staticwebapp"
    location        = "Central India"
}

#=================================
# Resource Group
#=================================
resource "azurerm_static_web_app" "angular19" {
    name                = "angular19-staticwebapp"
    resource_group_name = azurerm_resource_group.rg.name
    location            = azurerm_resource_group.rg.location
    sku_tier            = "Free"

    repository_url      = var.repository_url
    branch              = "main" # branch name
    repository_token    = var.github_pat # GitHub Personal Access Token

    github_actions_configuration {
        app_location         = "/"          # Root of your Angular repo
        output_location      = "dist/netajiapp/browser" # Angular build output folder
        api_location         = ""           # Leave empty if no Azure Functions API
    }
}