provider "aws" {
  region = "us-east-1"
}

variable "ami_value" {
  description = "value"
}

variable "awsinstance_type" {
  description = "value"
}

module "ec2_instance" {
  source = "./modules/ec2"
  ami = var.ami_value
  instance_type = var.awsinstance_type
}