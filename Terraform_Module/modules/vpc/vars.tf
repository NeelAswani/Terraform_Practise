variable "vpc_id" {}
variable "vpc_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "vpc_tenancy" {
  default = "dedicated"
}
