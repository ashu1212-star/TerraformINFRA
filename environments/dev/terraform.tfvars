rg_details = {
    rg1 = {
        name     = "dev-rg"
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
}

stg_details = {
    stg1 = {
        storage_account_name       = "devstgaccount121"
        resource_group_name        = "dev-rg"
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
        resource_group_name  = "dev-rg"
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
        resource_group_name  = "dev-rg"
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
        resource_group_name          = "dev-rg"
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
        resource_group_name       = "dev-rg"
        administrator_login       = "adminuser"
        administrator_login_password = "P@ssw0rd1234"
        sku_name                  = "B_Gen5_1"
        version                   = "12.0"
    }
    sqlserver2 = {
        mssql_server_name         = "dev-mssql-server-2"
        location                  = "canada central"
        resource_group_name       = "dev-rg-2"
        administrator_login       = "adminuser2"
        administrator_login_password = "P@ssw0rd5678"
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
    }
    sqldb2 = {
        sql_database_name = "dev-sqldb-2"
        server_id         = "sqlserver2"
        collation        = "SQL_Latin1_General_CP1_CI_AS"
        sku_name         = "S0"
        server_id         = "sqlserver2"
    }
}
vm_details = {
    vm1 = {
        vm_name = "dev-vm-1"
        location                   = "canada central"
        resource_group_name        = "dev-rg"
        size                       = "Standard_D2s_v3"
        admin_username             = "azureuser"
        admin_password             = "P@ssw0rd1234"
        network_interface_ids      = "nic1"
        
    }
    vm2 = {
        vm_name = "dev-vm-2"
        location                   = "canada central"
        resource_group_name        = "dev-rg-2"
        size                       = "Standard_D2s_v3"
        admin_username             = "azureuser2"
        admin_password             = "P@ssw0rd5678"
        network_interface_ids      = "nic2"
       
    }
}