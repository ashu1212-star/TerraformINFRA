terraform {
  required_providers {
    azurerm ={
        source = "hashicorp/azurerm"
        version = "4.54.0"
    }
  }


backend "azurerm" {
  resource_group_name  = "dev-rg"
  storage_account_name = "stg1example"
  container_name       = "pravin"
  key                  = "pravinn.tfstate"
}
}

provider "azurerm" {
  features {}
  subscription_id = "3a3d8a9b-d85b-4782-8862-9f222bbcd4c5"
}