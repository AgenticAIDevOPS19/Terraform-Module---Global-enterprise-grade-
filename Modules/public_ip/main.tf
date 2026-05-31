resource "azurerm_public_ip" "public-ip" {
    name = var.pub_name
    resource_group_name = var.rg_name
    location = var.rg_location
    allocation_method = var.pub_allocation

}