resource "azurerm_postgresql_flexible_server" "this" {
  name                   = "pg-${var.environment}"
  location               = var.location
  resource_group_name    = var.resource_group_name
  version                = "14"
  administrator_login    = var.admin_username
  administrator_password = var.admin_password
  storage_mb             = 32768
  sku_name               = "B1ms"
  zone                   = "1"

  authentication {
    active_directory_auth_enabled = false
    password_auth_enabled         = true
  }

  backup_retention_days = 7
  geo_redundant_backup_enabled = false

  tags = {
    environment = var.environment
  }
}

resource "azurerm_postgresql_flexible_server_database" "this" {
  name      = var.db_name
  server_id = azurerm_postgresql_flexible_server.this.id
  collation = "en_US.utf8"
  charset   = "UTF8"
}
