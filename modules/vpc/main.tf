locals {
  comman_name = "bilal-testing-env"
}

resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = {
    "Name" = "testingVPC_TF"
  }
}

resource "aws_subnet" "public-subnet-1" {
  # count = var.number_public_subnets
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-2a"
  # availability_zone = element(var.availability_zone, count.index)
 
  tags = {
    "Name" = "${local.comman_name}-public-subnet-1" 
  }
}

resource "aws_subnet" "public-subnet-2" {
  # count = var.number_public_subnets
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.22.0/24"
  availability_zone = "us-east-2b"
  # availability_zone = element(var.availability_zone, count.index +1 )


  tags = {
    "Name" = "${local.comman_name}-public-subnet-2" 
  }
}
