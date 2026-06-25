terraform {
  required_version = ">= 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  cloud {
    organization = "afitzhugh-hashicorp-ibm"

    workspaces {
      name = "aws-infra"
    }
  }
}
