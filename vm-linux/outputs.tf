# =====================
# Output Values
# =====================
output "vm_public_ip" {
  description = "Public IP of the Linux VM"
  value = azurerm_public_ip.public_ip.ip_address
}

output "ssh_connection_string" {
  description = "Command to connect via SSH"
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.public_ip.ip_address} -i PATH_TO_PRIVATE_KEY"
}