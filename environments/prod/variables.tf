variable "resource_group" {
  type = map(object({
    name     = string
    location = string
    }
    )
  )
}

variable "storage_account" {
  type = map(object({
    name                     = string
    account_tier             = string
    account_replication_type = string
    environment              = string
    }
  ))
}

variable "container_name" {
  type = map(object({
    name                  = string
    container_access_type = string
  }))

}

variable "virtual_networks" {
  type = map(object({
    name          = string
    address_space = list(string)
    dns_servers   = list(string)
    environment   = string
  }))
}

variable "public_ip_modules" {
  type = map(object({
    name = string
    allocation =string
  }))
}

variable "subnet_module" {
  type = map(object({
    vnet_key         = string
    name             = string
    address_prefixes = list(string)
  }))

}

variable "network_nic" {
  type = map(object({
    env_key         = string
    subnet_key      = string
    public_key      = string
    name            = string
    ip_name         = string
    allocation_type = string
  }))
}

variable "vm_windows_machine" {
  type = map(object({
    env_key              = string
    nic_key              = string
    windows_name         = string
    admin_user           = string
    admin_password       = string
    windows_size         = string
    windows_caching      = string
    sa_type              = string
    vm_windows_publisher = string
    windows_offer        = string
    windows_sku          = string
    windows_version      = string
    windows_tags         = string



  }))
}

variable "vm_linux_machine" {
  type = map(object({
    env_key          = string
    nic_key          = string
    linux_name       = string
    linux_size       = string
    linux_admin_user = string
    linux_admin_pwd  = string
    linux_sa_type    = string
    dpa              = bool # Disable Password Authentication (true/false)
    #linux_public_key      = string
    linux_caching   = string
    linux_publisher = string
    linux_offer     = string
    linux_sku       = string
    linux_version   = string
    linux_tag       = string
  }))

}