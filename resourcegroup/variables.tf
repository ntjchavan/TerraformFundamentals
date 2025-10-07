/*
create terraform.tfvars file in same folder & add values of below variables with values

subscription_id = "value"
tenant_id = "value"
client_id = "value"
client_secret = "value"
*/

variable "subscription_id" {
  type = string
  sensitive = true
  description = "Azure subscription ID"
}

variable "tenant_id" {
  type = string
  sensitive = true
  description = "Azure Entra ID"
}

variable "client_id" {
  type = string
  sensitive = true
  description = "Azure Client ID (App ID)"
}

variable "client_secret" {
  type = string
  sensitive = true
  description = "Azure Client Secret"
}