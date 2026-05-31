subnet_module = {
  prod1_sub1 = {
    vnet_key         = "prod1"
    name             = "prod1_subnet1"
    address_prefixes = ["10.0.1.0/24"]
  }

  prod1_sub2 = {
    vnet_key         = "prod1"
    name             = "prod1_subnet2"
    address_prefixes = ["10.0.2.0/24"]
  }

  prod2_sub1 = {
    vnet_key         = "prod2"
    name             = "prod2_subnet1"
    address_prefixes =  ["172.16.1.0/24"]

  }

  prod2_sub2 = {
    vnet_key         =  "prod2"
    name             =  "prod2_subnet2"
    address_prefixes = ["172.16.2.0/24"]
  }


}