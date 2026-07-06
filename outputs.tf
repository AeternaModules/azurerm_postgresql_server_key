output "postgresql_server_keys" {
  description = "All postgresql_server_key resources"
  value       = azurerm_postgresql_server_key.postgresql_server_keys
}
output "postgresql_server_keys_key_vault_key_id" {
  description = "List of key_vault_key_id values across all postgresql_server_keys"
  value       = [for k, v in azurerm_postgresql_server_key.postgresql_server_keys : v.key_vault_key_id]
}
output "postgresql_server_keys_server_id" {
  description = "List of server_id values across all postgresql_server_keys"
  value       = [for k, v in azurerm_postgresql_server_key.postgresql_server_keys : v.server_id]
}

