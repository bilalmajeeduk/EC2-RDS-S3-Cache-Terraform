variable "cidr_block" {}
variable "availability_zone" {
    description = "azs"
    type = list(string)
}
variable "public_subnets_cidr" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
}

variable "number_public_subnets" {
    type = number
}