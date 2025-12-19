module "rg" {
    source = "../modules/azurerm_resource_group"
    rg_details = var.rg_details
  }
module "stg" {
    depends_on = [ module.rg ]
    source = "../modules/azurerm_storage_account"
    stg_details = var.stg_details
  
}
    module "vnet" {
        depends_on = [ module.rg ]
        source = "../modules/azurerm_virtual_network"
        vnet_details = var.vnet_details
    }
    module "subnet" {
        depends_on = [ module.vnet ]
        source = "../modules/azurerm_subnet"
        subnet_details = var.subnet_details
    }
    module "NIC" {
        depends_on = [ module.subnet ]
        source = "../modules/azurerm_network_interface"
        nic_details = var.nic_details
        subnet_ids = module.subnet.subnet_ids
    }
    module "sql_server" {
        depends_on = [ module.rg, module.key_vault_secreats ]
        source = "../modules/azurerm_mssql_server"
        sql_server_details = var.sql_server_details 
        kv_id = module.key_vault.kv_ids["kv1"]
      
       

    }
    module "sql_database" {
        depends_on = [ module.sql_server ]
        source = "../modules/azurerm_mysql_database"
        sql_db_details = var.sql_db_details
        server_ids = module.sql_server.server_ids
    }
    module "vm" {
        depends_on = [ module.NIC , module.key_vault_secreats]
        source = "../modules/azurerm_linux_virtual_machine"
        vm_details = var.vm_details
        network_interface_ids = module.NIC.network_interface_ids
        kv_id = module.key_vault.kv_ids["kv1"]

    }
    module "key_vault" {
      depends_on = [ module.rg ]
        source = "../modules/azurerm_key_vault"
        kv_details = var.kv_details

    }
   module "key_vault_secreats" {
    depends_on = [ module.key_vault ]
  source = "../modules/azurerm_key_vault_secreats"
  kv_secret_details = var.kv_secret_details
    kv_id = module.key_vault.kv_ids["kv1"]
}

