resource "azurerm_key_vault_secret" "KVsecret" {
    for_each = var.kv_secret_details
  name         = each.value.secret_name
  value        = each.value.secret_value
  key_vault_id = each.value.key_vault_id
  
}