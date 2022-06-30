terraform {

  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }
  }

  backend "s3" {
    bucket = "terraform-iaas-tfstates"
    key    = "terraform/aws-ec2/terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = var.region
}

