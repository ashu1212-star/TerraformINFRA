resource "azurerm_key_vault_secret" "all_secrets" {
  for_each = var.kv_secret_details.secret1

  name         = each.key
  value        = each.value
  key_vault_id = var.kv_id
}



