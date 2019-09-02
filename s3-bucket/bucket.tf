terraform "aws" {
  access_key = "AKIA4RICXXXXXXXXXXXXXX"
  secret_key = "wMfeVG6XXXXXXXXXXXXXXXX"
  region     = "ap-south-1"
}
resource "aws_s3_bucket" "example" {
  bucket = "pranilmbucket"
  acl    = "private"
  versioning {
    enabled = true
  }
}
