

data "azurerm_key_vault_secret" "sql_admin_user" {
    for_each = var.sql_server_details
  name         = each.value.admin_username_secret
  key_vault_id = var.kv_id
  
}
data "azurerm_key_vault_secret" "sql_admin_password" {
    for_each = var.sql_server_details
  name         = each.value.admin_password_secret
  key_vault_id = var.kv_id
}



resource "azurerm_mssql_server" "sql_server" {
    for_each = var.sql_server_details
  name                         = each.value.mssql_server_name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  version                      = each.value.version
  administrator_login          = data.azurerm_key_vault_secret.sql_admin_user[each.key].value
  administrator_login_password = data.azurerm_key_vault_secret.sql_admin_password[each.key].value

}
