terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.59.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

module "variables" {
  source = "../variables"
}
