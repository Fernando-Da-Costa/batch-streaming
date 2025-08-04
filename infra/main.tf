
module "resource_group" {
  source = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.location
  tags     = local.common_tags
}

module "keyvault" {
  source              = "./modules/keyvault"
  resource_group_name = module.resource_group.name
  location           = var.location
  keyvault_name      = var.keyvault_name
  tags               = local.common_tags
}

module "datalake" {
  source                = "./modules/datalake"
  resource_group_name   = module.resource_group.name
  location              = var.location
  storage_account_name  = var.storage_account_name
  tags                  = local.common_tags
}

module "eventhub" {
  source              = "./modules/eventhub"
  resource_group_name = module.resource_group.name
  location           = var.location
  namespace_name     = var.namespace_name
  eventhub_name      = var.eventhub_name
  tags               = local.common_tags
}

module "databricks" {
  source              = "./modules/databricks"
  resource_group_name = module.resource_group.name
  location           = var.location
  workspace_name     = var.workspace_name
  tags               = local.common_tags
}

module "aks" {
  source              = "./modules/aks"
  resource_group_name = module.resource_group.name
  location           = var.location
  cluster_name       = var.cluster_name
  node_count         = var.node_count
  vm_size            = var.vm_size
  environment        = var.environment
}

# module "acr" {
#   source              = "./modules/acr"
#   resource_group_name = module.resource_group.name
#   location           = var.location
#   acr_name           = var.acr_name
#   tags               = local.common_tags
# }
