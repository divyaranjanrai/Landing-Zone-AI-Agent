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