provider "aws" {
  region = "ap-southeast-1"
}

data "aws_caller_identity" "current" {}


module "es-ec2"{
  source  = "./es-ec2"
}
