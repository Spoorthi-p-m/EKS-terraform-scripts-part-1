terraform {
  required_version = "~> 1.16.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket       = "super-user-bucket-for-state-file"
    key          = "eks/terraform.tfstate"
    region       = "eu-north-1"
    use_lockfile = true
  }
}

provider "aws" {
  region = var.aws-region
}
