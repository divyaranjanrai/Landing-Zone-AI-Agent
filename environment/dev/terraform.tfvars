rgs = {
  rg1 = {
    name     = "rg1"
    location = "centralindia"
  }
  rg2 = {
    name     = "rg2"
    location = "centralindia"
  }
}

vnets = {

  rahul_vnet1 = {

    name                = "vnet1"
    location            = "centralindia"
    resource_group_name = "rg1"
    address_space       = ["10.0.0.0/16"]

  }
}

subnets = {
  rahul_snet1 = {
    name                 = "frontend_snet"
    virtual_network_name = "vnet1"
    resource_group_name  = "rg1"
    address_prefixes     = ["10.0.1.0/24"]


  }
  rahul_snet2 = {
    name                 = "backend_snet"
    virtual_network_name = "vnet1"
    resource_group_name  = "rg1"
    address_prefixes     = ["10.0.4.0/24"]


  }
}

pips = {
  pip1 = {
    name                = "frontend_pip"
    resource_group_name = "rg1"
    location            = "centralindia"
    allocation_method   = "Static"
  }

  pip2 = {
    name                = "backend_pip"
    resource_group_name = "rg1"
    location            = "centralindia"
    allocation_method   = "Static"
  }
}

vms = {
  vm1 = {
    snet_name                       = "frontend_snet"
    resource_group_name             = "rg1"
    location                        = "centralindia"
    virtual_network_name            = "vnet1"
    pip_name                        = "frontend_pip"
    nic_name                        = "frontend_nic"
    vm_name                         = "frontend-vm"
    size                            = "Standard_D2s_v5"
    admin_username                  = "drradmin"
    admin_password                  = "drr@123"
    disable_password_authentication = "false"
    private_ip_address_allocation   = "Dynamic"
  }
  vm3 = {
    snet_name                       = "backend_snet"
    resource_group_name             = "rg1"
    location                        = "centralindia"
    virtual_network_name            = "vnet1"
    pip_name                        = "backend_pip"
    nic_name                        = "backend_nic"
    vm_name                         = "database-vm"
    size                            = "Standard_D2s_v5"
    admin_username                  = "drradmin"
    admin_password                  = "P@ssw0rd!Qx7$Lm9#Yz82"
    disable_password_authentication = "false"
    private_ip_address_allocation   = "Dynamic"
  }
}