module "resource_group_module" {
  source      = "../../Modules/resource_groups/"
  for_each    = var.resource_group
  rg_name     = each.value.name
  rg_location = each.value.location
}

module "storage_account" {
  source         = "../../Modules/storage_account"
  for_each       = var.storage_account
  sa_name        = each.value.name
  sa_replication = each.value.account_replication_type
  sa_tier        = each.value.account_tier
  rg_name        = local.resource_name[each.key]
  rg_location    = local.resource_location[each.key]

  tag_env = each.value.environment
}

module "storage_blob_container" {
  source   = "../../Modules/storage_container"
  for_each = var.container_name
  sa_con   = each.value.name
  sa_id    = module.storage_account[each.key].container_output
  sa_type  = each.value.container_access_type

}

module "vnet" {
  source             = "../../Modules/virtual_networks"
  for_each           = var.virtual_networks
  vnet_name          = each.value.name
  rg_name            = module.resource_group_module[each.key].resource_group_name_output
  rg_location        = module.resource_group_module[each.key].resource_group_location_output
  vnet_address_space = each.value.address_space
  vnet_dns_servers   = each.value.dns_servers

  tag_env = each.value.environment

}

module "public_ip" {
  source = "../../Modules/public_ip"
  for_each = var.public_ip_modules
  pub_name = each.value.name
  rg_name = local.resource_name[each.key]
  rg_location = local.resource_location[each.key]
  pub_allocation = each.value.allocation

}

module "subnet" {
  source           = "../../Modules/subnets"
  for_each         = var.subnet_module
  subnet_name      = each.value.name
  rg_name          = module.resource_group_module[each.value.vnet_key].resource_group_name_output
  vnet_name        = module.vnet[each.value.vnet_key].virtual_name
  address_prefixes = each.value.address_prefixes
}

module "nic" {
  source      = "../../Modules/network_interface"
  for_each    = var.network_nic
  nic_name    = each.value.name
  rg_name     = module.resource_group_module[each.value.env_key].resource_group_name_output
  rg_location = module.resource_group_module[each.value.env_key].resource_group_location_output
  ip_name     = each.value.ip_name
  subnet_id   = module.subnet[each.value.subnet_key].subnet_id_output
  allocation  = each.value.allocation_type
  public_ip   = module.public_ip[each.value.public_key].public_ip_output

}

module "windows_vm" {
  source                = "../../Modules/virtual_machines_windows"
  for_each              = var.vm_windows_machine
  vm_windows_name       = each.value.windows_name
  rg_name               = module.resource_group_module[each.value.env_key].resource_group_name_output
  rg_location           = module.resource_group_module[each.value.env_key].resource_group_location_output
  vm_windows_admin_user = each.value.admin_user
  vm_windows_admin_pwd  = each.value.admin_password
  vm_windows_size       = each.value.windows_size
  vm_windows_nic        = [module.nic[each.value.nic_key].nic_id]
  vm_windows_caching    = each.value.windows_caching
  vm_windows_sa_type    = each.value.sa_type
  vm_windows_publisher  = each.value.vm_windows_publisher
  vm_windows_offer      = each.value.windows_offer
  vm_windows_sku        = each.value.windows_sku
  vm_windows_version    = each.value.windows_version
  vm_windows_tags       = each.value.windows_tags
}

module "linux_vm" {
  source              = "../../Modules/virtual_machine_linux"
  for_each            = var.vm_linux_machine
  vm_linux_name       = each.value.linux_name
  rg_name             = module.resource_group_module[each.value.env_key].resource_group_name_output
  rg_location         = module.resource_group_module[each.value.env_key].resource_group_location_output
  vm_linux_size       = each.value.linux_size
  vm_linux_admin_user = each.value.linux_admin_user
  vm_linux_admin_pwd  = each.value.linux_admin_pwd
  vm_linux_nic        = [module.nic[each.value.nic_key].nic_id]
  vm_linux_dpa        = each.value.dpa
  #public_key         = each.value.linux_public_key
  vm_linux_caching   = each.value.linux_caching
  vm_linux_sa_type   = each.value.linux_sa_type
  vm_linux_publisher = each.value.linux_publisher
  vm_linux_offer     = each.value.linux_offer
  vm_linux_sku       = each.value.linux_sku
  vm_linux_version   = each.value.linux_version
  vm_linux_tag       = each.value.linux_tag
}
