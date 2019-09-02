provider "aws" {
  access_key = "AKXXXXXXXXXXXXX"
  secret_key = "wMfCXXXXXXXXXXXXXXXXX"
  region     = "ap-south-1"
}
resource "aws_instance" "example" {
  ami           = "ami-0d2692b6acea72ee6"
  instance_type = "t2.micro"
}
