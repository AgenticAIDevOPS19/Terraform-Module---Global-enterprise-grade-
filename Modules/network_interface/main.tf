resource "azurerm_network_interface" "nic"{
  name                = var.nic_name
  location            = var.rg_location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = var.ip_name
    subnet_id                     = var.subnet_id # Passed from the Subnet Module
    private_ip_address_allocation = var.allocation
    public_ip_address_id          = var.public_ip
  }
}