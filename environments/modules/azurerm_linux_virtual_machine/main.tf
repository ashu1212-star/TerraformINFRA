


data "azurerm_key_vault_secret" "admin_username" {
    for_each = var.vm_details
  name         = each.value.admin_username_secret
  key_vault_id = var.kv_id
  
}
data "azurerm_key_vault_secret" "admin_password" {
    for_each = var.vm_details
  name         = each.value.admin_password_secret
  key_vault_id = var.kv_id
  
}



resource "azurerm_linux_virtual_machine" "VM" {
    for_each = var.vm_details
  name                = each.value.vm_name
    resource_group_name = each.value.resource_group_name
    location            = each.value.location
    size                = each.value.size
    admin_username      = data.azurerm_key_vault_secret.admin_username[each.key].value
    admin_password      = data.azurerm_key_vault_secret.admin_password[each.key].value
    disable_password_authentication = false
    network_interface_ids = [var.network_interface_ids[each.value.network_interface_ids]]

    os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

       source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
    }
