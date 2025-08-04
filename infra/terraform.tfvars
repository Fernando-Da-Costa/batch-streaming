environment = "dev"
location    = "eastus"

# Resource Group
resource_group_name = "rg-databricks-batchstreaming-dev"

# Key Vault
keyvault_name = "kv-batchstreaming-dev"

# Data Lake
storage_account_name = "stdatalakebatchdev"

# Event Hub
namespace_name = "ehnamespacebatchdev"
eventhub_name  = "eh-streaming-data-dev"

# Databricks
workspace_name = "dbw-batchstreaming-dev"

# AKS
cluster_name = "aks-batchstreaming-dev"
node_count   = 1
vm_size      = "Standard_D2_v2"

# ACR
acr_name = "acrbatchstreamingdev" 