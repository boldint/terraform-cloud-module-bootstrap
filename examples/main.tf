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

resource "random_id" "random" {
  byte_length = 8
}

data "sops_file" "tfe_secrets" {
  source_file = "secrets.yaml"
}

module "org" {
  source = "../"

  organization_name          = "test-${random_id.random.hex}-org"
  organization_email         = "test-${random_id.random.hex}-org@test.com"
  terraform_cloud_auth_token = data.sops_file.tfe_secrets.data["token"]
}
