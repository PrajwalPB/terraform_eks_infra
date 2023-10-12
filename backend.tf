terraform {
  backend "s3" {
    bucket = "pb-terraform-backend"
    key = "terraform-eks.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}