/*
create terraform.tfvars file in same folder & add values of below variables

subscription_id = "value"
tenant_id = "value"
client_id = "value"
client_secret = "value"
repository_url = "value"
github_pat = "values"
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

variable "repository_url" {
    type = string
    sensitive = true
}

variable "github_pat" {
    type = string
    sensitive = true
    description = "GitHub Personal Access Token with repo permissions"
}