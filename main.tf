provider "aws" {
  region = "us-east-2"
}

module "vpc" {
  source = "./modules/vpc"
  cidr_block = var.cidr_block
  availability_zone = var.availability_zone
  public_subnets_cidr = var.public_subnets_cidr
  number_public_subnets = var.number_public_subnets
}