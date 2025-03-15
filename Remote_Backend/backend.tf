terraform {
  backend "azurerm" {
    subscription_id      = "55514a02-de16-462d-ad7e-5e5b69f75d76"
    resource_group_name  = "tfstate-grp"
    storage_account_name = "tfstaterno10034"
    container_name       = "tfstatecontainer"
    key                  = "demo.terraform.tfstate" # Or a more descriptive name
  }
}