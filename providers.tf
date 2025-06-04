terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.89.0"
    }
  }

  required_version = ">= 1.4.0"

  backend "local" {}
  # For production, consider backend "azurerm" for state storage
}

provider "azurerm" {
  features {}
}
