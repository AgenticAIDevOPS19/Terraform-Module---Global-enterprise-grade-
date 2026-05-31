variable "vm_windows_name" {
    type = string
}

variable "rg_location" {
    type = string
}

variable "rg_name" {
    type = string
}

variable "vm_windows_admin_user" {
    type = string
}

variable "vm_windows_admin_pwd" {
    type = string
}

variable "vm_windows_size" {
    type = string
}

variable "vm_windows_nic" {
    type = list(string)

}

variable "vm_windows_caching" {
    type = string
}

variable "vm_windows_sa_type" {
    type = string
}

variable "vm_windows_publisher" {
    type = string
}

variable "vm_windows_offer" {
    type = string
}

variable "vm_windows_sku" {
    type = string
}

variable "vm_windows_version" {
    type = string
}

variable "vm_windows_tags" {
    type = string
}