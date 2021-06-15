terraform {
  required_version = "~> 0.14"
  required_providers {
    sops = {
      source  = "carlpett/sops"
      version = "~> 0.6"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "sops" {}

data "sops_file" "tfe_secrets" {
  source_file = "secrets.yaml"
}

module "org" {
  source = "../"

  organization_name          = "boldint_azure_poc"
  organization_email         = "bold.agileit.devops@devoteam.com"
  terraform_cloud_auth_token = data.sops_file.tfe_secrets.data["token"]
}
