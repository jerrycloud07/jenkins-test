terraform {
  backend "s3" {
    bucket = "terraformtojenkins27-12-2023"
    region = "ap-south-1"
    key = "eks/terraform.tfstate"
  }
}
