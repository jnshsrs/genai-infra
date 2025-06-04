output "pg_host" {
  value = azurerm_postgresql_flexible_server.this.fqdn
}

output "pg_db_name" {
  value = var.db_name
}
