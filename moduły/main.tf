module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name                   = var.name
  ami                    = var.ami 
  instance_type          = var.instance_type
  tags                   = var.tags
}