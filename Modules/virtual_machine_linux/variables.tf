variable "vm_linux_name"{
    type = string
}

variable "rg_name"{
    type = string
}

variable "rg_location"{
    type = string
}

variable "vm_linux_size"{
    type = string
}

variable "vm_linux_admin_user"{
    type = string
}

variable "vm_linux_admin_pwd"{
    type = string
}

variable "vm_linux_nic"{
    type = list(string)
}

variable "vm_linux_dpa"{
    type = bool
}

# variable "public_key"{
#     type = string
# }


variable "vm_linux_caching"{
    type = string
}

variable "vm_linux_sa_type" {
    type = string
}


variable "vm_linux_publisher"{
    type = string
}

variable "vm_linux_offer"{
    type = string
}


variable "vm_linux_sku"{
    type = string
}


variable "vm_linux_version"{
    type = string
}

variable "vm_linux_tag" {
    type = string
}

