terraform {
  backend "s3" {
    bucket = "pranilmbucket"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
