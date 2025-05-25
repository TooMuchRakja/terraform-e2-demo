# plik ze zmiennymi, pamietajmy aby dodawac zmiennym pliki z domyslnymi wartosciami 
variable "region" {
  description = "Region w ktorym stworze sieci, jak żadnego nie wybiore to stworzy default"
  type        = string
  default     = "eu-central-1"
}

variable "ami" {
  description = "AMI instancji ec2"
  type        = string
  default     = "ami-02b7d5b1e55a7b5f1"
}

variable "instance_type" {
  description = "Typ instancji ec2"
  type        = string
  default     = "t2.micro"
}

variable "tags" {
  description = "Tagi dla danego środowiska"
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "Nazwa maszyny ec2"
  type        = string
  default     = "maszyna-ec2"
}