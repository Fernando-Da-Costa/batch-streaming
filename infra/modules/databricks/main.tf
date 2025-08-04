resource "azurerm_databricks_workspace" "databricks" {
  name                = var.workspace_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "standard"

  tags = var.tags
}

variable "workspace_name" {
  description = "Name of the Databricks workspace"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
}

variable "tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
}

output "workspace_id" {
  value = azurerm_databricks_workspace.databricks.id
}

output "workspace_url" {
  value = azurerm_databricks_workspace.databricks.workspace_url
} 