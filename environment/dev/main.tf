module "rgs" {
  source = "../../module/azurerm_resource_group"
  rgs    = var.rgs

}

module "vnets" {
  source     = "../../module/azurerm_virtual_network"
  depends_on = [module.rgs]
  vnets      = var.vnets
}

module "snets" {
  source     = "../../module/azurerm_subnet"
  depends_on = [module.vnets]
  snets      = var.subnets
}

module "pips" {
  source     = "../../module/azurerm_public_ip"
  depends_on = [module.rgs]
  pips       = var.pips
}

module "rahul_vms" {
  source     = "../../module/azurerm_VM"
  depends_on = [module.snets, module.pips]
  vms        = var.vms
}