vm_linux_machine = {
  prod1 = {
    env_key          = "prod1"
    nic_key          = "prod1_lin_nic" 
    linux_name       = "linux-prod-vm1"
    linux_size       = "Standard_D2s_v3"
    linux_admin_user = "firstlinuxuser"
    linux_admin_pwd  = "P@ssw0rd@1357!"
    dpa              = false # Disable Password Authentication (true/false)
    #linux_public_key      = 
    linux_caching   = "ReadWrite"
    linux_sa_type   = "Standard_LRS"
    linux_publisher = "Canonical"
    linux_offer     = "0001-com-ubuntu-server-jammy"
    linux_sku       = "22_04-lts"
    linux_version   = "latest"
    linux_tag       = "linux_learning_cost_optimization"

  }

  prod2 = {
    env_key          = "prod2"
    nic_key          = "prod2_lin_nic"
    linux_name       = "linux-prod-vm1"
    linux_size       = "Standard_D2s_v3"
    linux_admin_user = "secondlinuxuser"
    linux_admin_pwd  = "P@ssw0rd@1357!"
    dpa              = false # Disable Password Authentication (true/false)
    #linux_public_key      = 
    linux_caching   = "ReadWrite"
    linux_sa_type   = "Standard_LRS"
    linux_publisher = "Canonical"
    linux_offer     = "0001-com-ubuntu-server-jammy"
    linux_sku       = "22_04-lts"
    linux_version   = "latest"
    linux_tag       = "linux_learning_cost_optimization"
  }
}