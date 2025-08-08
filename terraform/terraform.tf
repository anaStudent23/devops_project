terraform {
  required_version = ">= 1.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  cloud {
    organization = "devops-project-org"

    workspaces {
      name = "devops-project-workspace"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
