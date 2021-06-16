output "organization_name" {
  description = "Terraform organization name."
  value       = tfe_organization.org.id
}

output "organization_token" {
  description = "Terraform organization token."
  value       = tfe_organization_token.org_token.token
  sensitive   = true
}
