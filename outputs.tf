output "postgresql_server_keys_id" {
  description = "Map of id values across all postgresql_server_keys, keyed the same as var.postgresql_server_keys"
  value       = { for k, v in azurerm_postgresql_server_key.postgresql_server_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "postgresql_server_keys_key_vault_key_id" {
  description = "Map of key_vault_key_id values across all postgresql_server_keys, keyed the same as var.postgresql_server_keys"
  value       = { for k, v in azurerm_postgresql_server_key.postgresql_server_keys : k => v.key_vault_key_id if v.key_vault_key_id != null && length(v.key_vault_key_id) > 0 }
}
output "postgresql_server_keys_server_id" {
  description = "Map of server_id values across all postgresql_server_keys, keyed the same as var.postgresql_server_keys"
  value       = { for k, v in azurerm_postgresql_server_key.postgresql_server_keys : k => v.server_id if v.server_id != null && length(v.server_id) > 0 }
}

