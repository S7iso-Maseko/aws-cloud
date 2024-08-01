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

# module "variables" {
#   source = "../variables"
# }

# module "tfvars-demo" {
#   source = "../tfvars-demo"
# }

# module "data-types" {
#   source = "../data-types"
# }

# module "counter" {
#   source = "../count-demo"
# }

module "conditional" {
  source = "../conditional-expressions"
}