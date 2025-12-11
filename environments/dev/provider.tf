terraform {
  required_providers {
    azurerm ={
        source = "hashicorp/azurerm"
        version = "4.54.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3a3d8a9b-d85b-4782-8862-9f222bbcd4c5"
}