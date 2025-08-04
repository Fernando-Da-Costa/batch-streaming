resource "azurerm_eventhub_namespace" "eventhub" {
  name                = var.namespace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"
  capacity            = 1

  tags = var.tags
}

resource "azurerm_eventhub" "eventhub" {
  name              = var.eventhub_name
  namespace_id      = azurerm_eventhub_namespace.eventhub.id
  partition_count   = 2
  message_retention = 1
}

variable "namespace_name" {
  description = "Name of the Event Hub Namespace"
  type        = string
}

variable "eventhub_name" {
  description = "Name of the Event Hub"
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

output "namespace_id" {
  value = azurerm_eventhub_namespace.eventhub.id
}

output "eventhub_id" {
  value = azurerm_eventhub.eventhub.id
} 