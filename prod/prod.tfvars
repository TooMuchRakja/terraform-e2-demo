name          = "ec2-prod"
ami           = "ami-02b7d5b1e55a7b5f1"
instance_type = "t2.micro"
tags = {
  Env = "prod"
  Typ = "maszyna_prod"
}
bucket_name = "terraform-kurs-wiaderko-199548"