provider "aws" {
  region = "eu-central-1"
}

module "instance" {
  source        = ".//mod"
  instance_type = "t3.micro"
  instance_tag  = "dev"
}


