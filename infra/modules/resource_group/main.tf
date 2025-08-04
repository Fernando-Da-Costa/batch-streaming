resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location
  tags     = var.tags
}

variable "name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region where the resource group will be created"
  type        = string
}

variable "tags" {
  description = "Tags to be applied to the resource group"
  type        = map(string)
  default     = {}
}

output "name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.rg.name
}

output "id" {
  description = "ID of the resource group"
  value       = azurerm_resource_group.rg.id
} 