variable "vnet_name" {
  type = string
}

variable "vnet_address_space" {
  type = list(string)
}

variable "vnet_dns_servers" {
  type = list(string)

}

variable "rg_name" {
  type = string
}

variable "rg_location" {
  type = string
}

variable "tag_env" {
  type = string

}
