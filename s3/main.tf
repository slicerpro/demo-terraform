#setup terraform cloud and workspace
terraform {
  backend = "remote" {
    hostname = "app.terraform.io"
    organization = "2022-saa"
    
    workspaces {
      name = "demo-terraform"
    }
  }
}

#setup terraform providers
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.72.0"
    }
  }
  
  required_version = ">= 1.1.3"
}

#setup AWS provider
provider "aws" {
  provider = var.aws_region
}
