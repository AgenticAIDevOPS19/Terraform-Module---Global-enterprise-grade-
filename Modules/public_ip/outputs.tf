output "public_ip_output" {
    value = azurerm_public_ip.public-ip.id
}

output "public_ip_address" {
    value = azurerm_public_ip.public-ip.ip_address
}