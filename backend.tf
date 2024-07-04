terraform {
  backend "s3" {
    bucket = "wisdtest"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}