# Terraform Block
terraform {
  required_version = ">=1.0.0" #current 1.6.6 
  required_providers {

    #Azure 
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0" #current 3.87.0
    }

    #Random
    random = {
      source  = "hashicorp/random"
      version = ">=3.0" #current3.6.0
    }
  }
}

# provider Block
provider "azurerm" {
  features {
    
  }
}