variable "organization_name" {
  description = "Terraform Cloud Organization name."
  type        = string
}

variable "organization_email" {
  description = "Terraform Cloud Organization owner email."
  type        = string
}

variable "terraform_cloud_auth_token" {
  description = "First level Terraform Cloud authentication token. Must be setup before hand, preferably when first registering the Terraform Cloud account."
  type        = string
  sensitive   = true
}
