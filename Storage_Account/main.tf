terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.8.0"
    }
  }

  required_version = ">=1.9.0"
}

provider "azurerm" {
  features {}
  subscription_id = "55514a02-de16-462d-ad7e-5e5b69f75d76"
}


resource "azurerm_resource_group" "TF_Resource_Grp" {
  name     = "TF_Resource_Grp"
  location = "Central India"
}

resource "azurerm_storage_account" "TF_Storage_Resource" {
  name                     = "azxtfstorageaccount"
  resource_group_name      = azurerm_resource_group.TF_Resource_Grp.name
  location                 = azurerm_resource_group.TF_Resource_Grp.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}