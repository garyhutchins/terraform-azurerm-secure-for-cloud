terraform {
  cloud {
    organization = "sysdig"

    workspaces {
      name = "terraform-azurerm-testing"
    }
  }

  #fix the version of terraform 
  required_version = "1.3.9"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.46.0"
    }

    azuread = {
      source  = "hashicorp/azuread"
    }

    sysdig  = {
      source = "sysdiglabs/sysdig"
    }
  }
}