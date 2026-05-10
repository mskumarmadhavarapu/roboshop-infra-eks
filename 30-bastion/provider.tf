terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0" # Terraform AWS provider version
    }
  }

  backend "s3" {
<<<<<<< HEAD
    bucket  = "remote-state-mskdaws88s" # Replace with your unique bucket name
=======
    bucket  = "remote-state-aws-88s-dev" # Replace with your unique bucket name
>>>>>>> b97ed309e70a83f239533b290e6630091f838dee
    key     = "roboshop-eks-bastion"
    region  = "us-east-1"
    encrypt = true
    use_lockfile   = true
  }
}

provider "aws" {
  region = "us-east-1"
}