terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.8.0"
    }
  }
  required_version = ">=1.9.0"

}

provider "azurerm" {

  subscription_id = "46b70d33-6052-422c-86a1-26fd1ebfc601"

  features {

  }

}