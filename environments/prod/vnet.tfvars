virtual_networks = {
  prod1 = {
    name          = "rgprod1_vnet"
    address_space = ["10.0.0.0/16"]
    dns_servers   = ["8.8.8.8", "8.8.4.4"]
    environment   = "tag_prod1_vnet"

  }

  prod2 = {
    name          = "rgprod2_vnet"
    address_space = ["172.16.0.0/16"]
    dns_servers   = ["8.8.8.8", "8.8.4.4"]
    environment   = "tag_prod2_vnet"
  }
}