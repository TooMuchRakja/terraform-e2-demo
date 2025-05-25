terraform {
  required_version "= 1.5.7"

  backend "s3" {
    bucket  = "terraform-kurs-wiaderko-199548"
    key     = "13-github_actions/prod/terraform.tfstate"
    region  = "eu-central-1"
    encrypt = true
  }
}

provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

module "compute" {
  source        = "../moduły"
  name          = var.name
  ami           = var.ami
  instance_type = var.instance_type
  tags          = var.tags
}
