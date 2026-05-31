resource "azurerm_windows_virtual_machine" "vm_windows" {
    name = var.vm_windows_name
    resource_group_name = var.rg_name
    location = var.rg_location
    size = var.vm_windows_size
    admin_username = var.vm_windows_admin_user
    admin_password = var.vm_windows_admin_pwd
    network_interface_ids = var.vm_windows_nic
    
    os_disk {
        caching = var.vm_windows_caching
        storage_account_type = var.vm_windows_sa_type

    }

    source_image_reference {
    publisher = var.vm_windows_publisher
    offer     = var.vm_windows_offer
    sku       = var.vm_windows_sku
    version   = var.vm_windows_version
  }
  tags = {
    ManagedBy = var.vm_windows_tags

  }
}
