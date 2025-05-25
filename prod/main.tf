terraform {
  required_version = "1.5.7"

  backend "s3" {
    bucket  = "terraform-kurs-wiaderko-199548"
    key     = "14-github_actions/prod/terraform.tfstate"
    region  = "eu-central-1"
    encrypt = true
  }

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
