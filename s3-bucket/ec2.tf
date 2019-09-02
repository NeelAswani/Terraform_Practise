provider "aws" {
  access_key = "AKIA4RIWID4SRXYAJT5O"
  secret_key = "wMfeVG6RRS3SKEWEJ5qCXcVVWxC/6IlfEZ3wCS0L"
  region     = "ap-south-1"
}
resource "aws_s3_bucket" "example" {
  bucket = "pranilmbucket"
  acl    = "private"
  versioning {
    enabled = true
  }
}
