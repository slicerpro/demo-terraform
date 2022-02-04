#setup terraform cloud and workspace
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "demo-terraform-2022saa"
    
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
#      version = "~> 3.72.0"
    }
  }
  
  required_version = ">= 1.1.3"
}

#setup AWS provider
provider "aws" {
  region = var.aws_region
}
