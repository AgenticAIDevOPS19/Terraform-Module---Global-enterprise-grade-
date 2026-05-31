
resource "azurerm_storage_account" "stg" {
  name                     = var.sa_name
  resource_group_name      = var.rg_name
  location                 = var.rg_location
  account_tier             = var.sa_tier
  account_replication_type = var.sa_replication

  tags = {
    environment = var.tag_env
  }
}
