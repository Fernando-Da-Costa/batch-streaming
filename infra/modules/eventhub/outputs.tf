
output "namespace_id" {
  value = azurerm_eventhub_namespace.eventhub.id
}

output "eventhub_id" {
  value = azurerm_eventhub.eventhub.id
} 