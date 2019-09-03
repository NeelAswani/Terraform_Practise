provider "aws" {
  access_key  = "AKIA4RIWID4S7K5INYOH"
  secret_key = "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"
  region     = "ap-south-1"
}
module "my_vpc" {
  source      ="../modules/vpc"
  vpc_cidr    = "192.168.0.0/16"
  vpc_tenancy = "default"
  vpc_id      = "${module.my_vpc.vpc_id}"
  vpc_subnet_cidr = "192.168.1.0/24"
}
module "my_ec2" {
  source        = "../modules/ec2"
  ec2_count     = "1"
  instance_type = "t2.micro"
  subnet_id     = "${module.my_vpc.subnet_id}"
  ami_id        = "ami-0b99c7725b9484f9e"
}
