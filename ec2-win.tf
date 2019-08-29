provider "aws" {
  access_key = "AKIAY7AT6ZQKWSJCSSFG"
  secret_key = "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"
  region = "ap-south-1a"
}
resource "aws_instance" "windows"{
  ami = "ami-00b2d3ea9077fcebf"
  instance_type ="t2.micro"
  key_name ="terraform_key"
  security_groups=["${aws-security_group.allow_rdp.name}"]
}
resource "aws_security_group" "allow_rdp" {
  name ="allow_rdp"
  description ="Allow ssh traffic"

  ingess {
    from_port =3389
    to_port =3389
    protocol ="tcp"
    cidr_blocks =["0.0.0.0/0"]
   }
}
