resource "azurerm_mssql_database" "db" {
    for_each = var.sql_db_details
  name                = each.value.sql_database_name
  server_id = var.server_ids[each.value.server_id]
  collation          = each.value.collation
    sku_name           = each.value.sku_name

}   