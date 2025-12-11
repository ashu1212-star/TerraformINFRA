resource "azurerm_network_interface" "NIC" {
    for_each = var.nic_details
  name                = each.value.network_interface_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = each.value.ip_configuration_name
    subnet_id                     = var.subnet_ids[each.value.subnet_key]
    private_ip_address_allocation = each.value.private_ip_address_allocation
  }
  
}
