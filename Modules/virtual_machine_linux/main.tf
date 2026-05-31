resource "azurerm_linux_virtual_machine" "vm_linux" {
  name                = var.vm_linux_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  size                = var.vm_linux_size
  admin_username = var.vm_linux_admin_user
  admin_password = var.vm_linux_admin_pwd
  network_interface_ids = var.vm_linux_nic

  disable_password_authentication = var.vm_linux_dpa

  # admin_ssh_key {
  #   username   = var.vm_linux_admin_user
  #   public_key = var.public_key
  # }

  os_disk {
    caching              = var.vm_linux_caching
    storage_account_type = var.vm_linux_sa_type
  }

  source_image_reference {
    publisher = var.vm_linux_publisher
    offer     = var.vm_linux_offer
    sku       = var.vm_linux_sku
    version   = var.vm_linux_version
  }

  tags = {
    ManagedBy = var.vm_linux_tag
  }
}