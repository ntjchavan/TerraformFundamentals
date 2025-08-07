Reference Link: https://developer.hashicorp.com/terraform

Downloaded terraform .zip file from server - AMD64
https://developer.hashicorp.com/terraform/install#windows

Extracted .zip file & kept files in folder: C:\Program Files\Terraform

Updated environment path using Edit the system environment variable, Update path in system / user variable with above (C:\Program Files\Terraform) path

Install extention in VS Code Terraform, HashiCorp Terraform & Hashicorp HCL

tenant_id: availabe in AZ Microsoft Entra ID service
client_id: click on App registration (Manage) in Entra ID service, add registration app, you will get client_id as Application (client) ID
client_secret: click on above create App registration, click on Certificates & Client (Manage), Add new client secret, use value as client_secret

Give access to above create App registration
Go to subscription, click on subscription Pay-As-You-Go / yours subscription, click on Access Control (IAM), Add -> Add role assignment -> Role (Previleged administrator roles -> select role Contributor, it is require to give authorize so that you can run terraform file/configuration) -> Next -> Members (Members -> Select members -> search App registration name & select it -> Review & assign)

Copy provider detail from below link -> Use Provider
https://registry.terraform.io/providers/hashicorp/azurerm/latest

Copy require configuration from below link for your service like storage/vm
https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account

Terraform commands:
terraform init
terraform plan
terraform apply
terraform destroy

Delete App registration using Microsoft Entra ID service once local testing completed.
