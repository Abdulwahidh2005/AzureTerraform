terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.8.0"
    }
  }
  required_version = ">=1.9.0"
  backend "azurerm" {
      resource_group_name  = "tfstate-day04"
      storage_account_name = "day041474"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
  }
}

provider "azurerm" {

    subscription_id = "46b70d33-6052-422c-86a1-26fd1ebfc601"

    features {
      
    }
  
}

resource "azurerm_resource_group" "example" {
  name     = "abdulresourcegroup"
  location = "South India"
}

resource "azurerm_storage_account" "example" {
  name                     = "stabdul460926"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}