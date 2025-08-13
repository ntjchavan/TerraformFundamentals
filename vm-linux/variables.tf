variable "subscription_id" {
  type = string
  sensitive = true
}

variable "tenant_id" {
  type = string
  sensitive = true
}

variable "client_id" {
  type = string
  sensitive = true
}

variable "client_secret" {
  type = string
  sensitive = true
}

variable "admin_username" {
  type = string
  description = "Admin username for VM"
}

variable "ssh_public_key_path" {
  type = string
  description = "Path to your SSH public key"
}