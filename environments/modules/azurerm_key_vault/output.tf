output "kv_ids" {
  value = { for k, v in azurerm_key_vault.KV : k => v.id }
}
