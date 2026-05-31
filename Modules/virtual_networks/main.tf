
resource "azurerm_virtual_network" "vn" {
  name                     = var.vnet_name
  resource_group_name      = var.rg_name
  location                 = var.rg_location
  address_space = var.vnet_address_space
  dns_servers = var.vnet_dns_servers

  tags = {
    environment = var.tag_env
  }
}  
  
 

  