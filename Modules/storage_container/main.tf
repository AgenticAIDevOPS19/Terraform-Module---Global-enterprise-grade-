
resource "azurerm_storage_container" "container" {
  name = var.sa_con 
  storage_account_id = var.sa_id 
  container_access_type = var.sa_type
}
