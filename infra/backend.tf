terraform {
  required_version = ">= 1.4.0"
  backend "azurerm" {
    resource_group_name  = "rg-infra-batch-streaming"
    storage_account_name = "tfstatebatchstreaming"
    container_name       = "tfstate"
    key                  = "infra-dev.tfstate"
  }
}