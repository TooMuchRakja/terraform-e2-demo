terraform {
  required_version = "1.5.7"

  backend "s3" {}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "compute" {
  source        = "../moduły"
  name          = var.name
  ami           = var.ami
  instance_type = var.instance_type
  tags          = var.tags
}
