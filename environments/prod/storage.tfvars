storage_account = {
  prod1 = {
    name                     = "storagedemo678567"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    environment              = "tag_prod1_storage"
  }
  

  prod2 = {
    name                     = "storagedemo987345"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    environment              = "tag_prod2_storage"
  }

}

container_name = {
  prod1 = {
    name = "containerprod1"


    container_access_type = "private"
  }

  prod2 = {
    name                  = "containerprod2"
    container_access_type = "private"

  }
}



