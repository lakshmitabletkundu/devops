terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=latest"
    }
  }

}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}


