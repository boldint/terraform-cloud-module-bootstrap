# Terraform Cloud Bootstrap module

Terraform module for bootstrapping a Terraform Cloud Organization, after initial (manual) creation of a Terraform Cloud account!

[//]: # (Do not make changes below this line)
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.25.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | ~> 0.25.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_organization.org](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/organization) | resource |
| [tfe_organization_token.org_token](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/organization_token) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_organization_email"></a> [organization\_email](#input\_organization\_email) | Terraform Cloud Organization owner email. | `string` | n/a | yes |
| <a name="input_organization_name"></a> [organization\_name](#input\_organization\_name) | Terraform Cloud Organization name. | `string` | n/a | yes |
| <a name="input_terraform_cloud_auth_token"></a> [terraform\_cloud\_auth\_token](#input\_terraform\_cloud\_auth\_token) | First level Terraform Cloud authentication token. Must be setup beforehand, preferably when first registering the Terraform Cloud account. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_organization_name"></a> [organization\_name](#output\_organization\_name) | Terraform organization name. |
| <a name="output_organization_token"></a> [organization\_token](#output\_organization\_token) | Terraform organization token. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
