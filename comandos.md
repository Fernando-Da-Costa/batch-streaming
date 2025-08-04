# Cria o resource group
az group create \
  --name rg-infra-batch-streaming \
  --location eastus

# Cria o storage account
az storage account create \
  --name tfstatebatchstreaming \
  --resource-group rg-infra-batch-streaming \
  --location eastus \
  --sku Standard_LRS \
  --kind StorageV2

# Cria o container tfstate
az storage container create \
  --name tfstate \
  --account-name tfstatebatchstreaming



terraform plan -out=tfplan
terraform apply tfplan
