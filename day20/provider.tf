# Configure the Azure provider, you can have many
# if you use azurerm provider, it's source is hashicorp/azurerm
# short for registry.terraform.io/hashicorp/azurerm


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.12.0"
    }
  }

  required_version = ">= 1.9.0"
}
# configures the provider

provider "azurerm" {
  subscription_id = "f35fd15b-c42f-44c8-8e19-b8809ece0514"
  features {
    key_vault {
      purge_soft_delete_on_destroy = false
    }
  }
}
