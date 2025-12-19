rg_details = {
    rg1 = {
        name     = "dev-rg1"
        location = "canada central"
    }
    rg2 = {
        name     = "dev-rg-2"
        location = "canada central"
    }
    rg3 = {
        name     = "dev-rg-3"
        location = "canada central"
    }
    rg4 = {
        name     = "dev-rg-4"
        location = "canada central"
    }
    rg5 = {
        name     = "dev-rg-5"
        location = "canada central"
    }

    rg6 = {
        name     = "dev-rg-6"
        location = "canada central"
    }
     rg7 = {
        name     = "dev-rg-7"
        location = "canada central"
    }
}

stg_details = {
    stg1 = {
        storage_account_name       = "devstgaccount121"
        resource_group_name        = "dev-rg1"
        location                   = "canada central"
        account_tier               = "Standard"
        account_replication_type   = "LRS"
    }
}
vnet_details = {
    vnet1 = {
        virtual_network_name = "dev-vnet-1"
        address_space        = ["10.0.0.0/16"]
        location             = "canada central"
        resource_group_name  = "dev-rg1"
    }
    vnet2 = {
        virtual_network_name = "dev-vnet-2"
        address_space        = ["10.1.0.0/16"]
        location             = "canada central"
        resource_group_name  = "dev-rg-2"
    }
}
subnet_details = {
    subnet1 = {
        subnet_name          = "dev-subnet-1"
        resource_group_name  = "dev-rg1"
        virtual_network_name = "dev-vnet-1"
        address_prefixes     = ["10.0.1.0/24"]

    }
    subnet2 = {
        subnet_name          = "dev-subnet-2"
        resource_group_name  = "dev-rg-2"
        virtual_network_name = "dev-vnet-2"
        address_prefixes     = ["10.1.1.0/24"]
    }
}
nic_details = {
    nic1 = {
        network_interface_name       = "dev-nic-1"
        location                     = "canada central"
        resource_group_name          = "dev-rg1"
        ip_configuration_name        = "dev-ipconfig-1"
        subnet_key                   = "subnet1"
        private_ip_address_allocation = "Dynamic"
    }
    nic2 = {
        network_interface_name       = "dev-nic-2"
        location                     = "canada central"
        resource_group_name          = "dev-rg-2"
        ip_configuration_name        = "dev-ipconfig-2"
        subnet_key                   = "subnet2"
        private_ip_address_allocation = "Dynamic"
    }
}
sql_server_details = {
    sqlserver1 = {
        mssql_server_name         = "dev-mssql-server-1"
        location                  = "canada central"
        resource_group_name       = "dev-rg1"
          admin_username_secret = "sql1-user"
    admin_password_secret = "sql1-password"
        sku_name                  = "B_Gen5_1"
        version                   = "12.0"
    }
    sqlserver2 = {
        mssql_server_name         = "dev-mssql-server-2"
        location                  = "canada central"
        resource_group_name       = "dev-rg-2"
         admin_username_secret= "sql2-user"
    admin_password_secret = "sql2-password"
        sku_name                  = "B_Gen5_1"
        version                   = "12.0"
    }
}
sql_db_details = {
    sqldb1 = {
        sql_database_name = "dev-sqldb-1"
        server_id         = "sqlserver1"
        collation        = "SQL_Latin1_General_CP1_CI_AS"
        sku_name         = "S0"
        server_id         = "sqlserver1"
        kv_key = "kv1"
    }
    sqldb2 = {
        sql_database_name = "dev-sqldb-2"
        server_id         = "sqlserver2"
        collation        = "SQL_Latin1_General_CP1_CI_AS"
        sku_name         = "S0"
        server_id         = "sqlserver2"
        kv_key = "kv2"
    }
}
vm_details = {
    vm1 = {
        vm_name = "dev-vm-1"
        location                   = "canada central"
        resource_group_name        = "dev-rg1"
        size                       = "Standard_D2s_v3"
        network_interface_ids      = "nic1"
         admin_username_secret = "vm1-username"
         admin_password_secret= "vm1-password"
        kv_key = "kv1"
    }
    vm2 = {
        vm_name = "dev-vm-2"
        location                   = "canada central"
        resource_group_name        = "dev-rg-2"
        size                       = "Standard_D2s_v3"
         admin_username_secret = "vm2-username"
    admin_password_secret = "vm2-password"
         kv_key = "kv2"
       
        network_interface_ids      = "nic2"
       
    }
}

kv_details = {
    kv1 = {
        key_vault_name                = "Ashu-tijori1"
        location                      = "canada central"
        resource_group_name           = "dev-rg1"
        sku_name                      = "standard"
    }
}

kv_secret_details = {
    secret1 = {
        keyvaultname      = "Ashu-tijori1"

        vm1-username        = "adminuser1"
        vm1-password        = "Passw0rd@1234"

        vm2-username         = "adminuser2"
        vm2-password        = "Passw0rd@5678"  

        sql1-user         = "sqladmin1"
        sql1-password     = "Sqladmin@1234  "

        sql2-user         = "sqladmin2"
        sql2-password     = "Sqladmin@5678  "
    }

}