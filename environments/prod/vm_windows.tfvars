vm_windows_machine = {
  prod1 = {
    env_key              = "prod1"
    nic_key              = "prod1_win_nic"
    windows_name         = "win-prod-vm1"
    admin_user           = "firstazureuser"
    admin_password       = "P@ssw0rd@1357!"
    windows_size         = "Standard_D2s_v3"
    windows_caching      = "ReadWrite"
    sa_type              = "Standard_LRS"
    vm_windows_publisher = "MicrosoftWindowsServer"
    windows_offer        = "WindowsServer"
    windows_sku          = "2019-Datacenter-Core"
    windows_version      = "latest"
    windows_tags         = "Windows_prod_terraform"

  }
  prod2 = {
    env_key              = "prod2"
    nic_key              = "prod2_win_nic"
    windows_name         = "win-prod-vm2"
    admin_user           = "secondazureuser"
    admin_password       = "P@ssw0rd@1357!"
    windows_size         = "Standard_D2s_v3"
    windows_caching      = "ReadWrite"
    sa_type              = "Standard_LRS"
    vm_windows_publisher = "MicrosoftWindowsServer"
    windows_offer        = "WindowsServer"
    windows_sku          = "2019-Datacenter-Core"
    windows_version      = "latest"
    windows_tags         = "Windows_prod_terraform"

  }


} 