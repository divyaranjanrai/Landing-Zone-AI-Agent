variable "rgs" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "vnets" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
  }))
}

variable "subnets" {
  type = map(object({
    name                 = string
    virtual_network_name = string
    resource_group_name  = string
    address_prefixes     = list(string)
  }))
}

variable "pips" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))
}

variable "vms" {
  type = map(object({
    snet_name                     = string
    resource_group_name           = string
    location                      = string
    virtual_network_name          = string
    pip_name                      = string
    nic_name                      = string
    vm_name                       = string
    size                          = string
    admin_username                = string
    ssh_public_key                = string
    private_ip_address_allocation = string
  }))
}