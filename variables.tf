variable "cidr_block" {
   default = "10.0.0.0/16"
   # default   = ["10.0.1.0/24", "10.0.2.0/24"]
}
# variable "cidr_block" {
#    default = "10.0.2.0/24"
# }
variable "public_subnets_cidr" {
  description = "CIDR blocks for public subnets"
  type = list(string)
  default = ["10.0.2.0/24", "10.0.22.0/24"]
}

variable "availability_zone" {
  description = "list of az"
  type = list(string)
  default = ["us-east-2a", "us-east-2b"] 
}

variable "number_public_subnets" {
  type = number
  default = 1
}
