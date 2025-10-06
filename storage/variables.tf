/*
create terraform.tfvars file in same folder & add values of below variables

subscription_id = "value"
tenant_id = "value"
client_id = "value"
client_secret = "value"
*/

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