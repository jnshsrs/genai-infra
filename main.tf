resource "azurerm_resource_group" "genai" {
  name     = "rg-genai-dev"
  location = "westeurope"
}

module "postgresql" {
  source              = "./modules/postgresql"
  environment         = var.environment
  location            = var.location
  resource_group_name = azurerm_resource_group.genai.name
  admin_password      = var.pg_admin_password
}
