resource "tfe_organization" "org" {
  name  = var.organization_name
  email = var.organization_email
}

resource "tfe_organization_token" "org_token" {
  organization = var.organization_name
}
