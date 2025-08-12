output "vm_public_ip" {
  description = "Public IP of the Linux VM"
  value = azurerm_public_ip.public_ip.ip_address
}

# output "storage_account_name" {
#   value = azurerm_storage_account.sa.name
# }
