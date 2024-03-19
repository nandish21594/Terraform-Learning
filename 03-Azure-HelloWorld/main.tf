# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.96.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  #   skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "terraform-test-rg" {
  name     = "terraform-test-resources"
  location = "West Europe"
  tags = {
    environment = "terraform-test"
  }
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "terraform-test-vn" {
  name                = "terraform-test-network"
  resource_group_name = azurerm_resource_group.terraform-test-rg.name
  location            = azurerm_resource_group.terraform-test-rg.location
  address_space       = ["10.123.0.0/16"]
  tags = {
    environment = "terraform-test"
  }
}
