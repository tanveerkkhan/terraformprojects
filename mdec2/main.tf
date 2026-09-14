provider "aws" {
  region = "eu-central-1"
}

terraform {
  backend "s3" {
    bucket         = "tanveer-terraform-state-bucket"
    key            = "ec2-module/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

module "instance" {
  source        = ".//mod"
  instance_type = "t3.micro"
  instance_tag  = "dev"
}


