provider "aws" {
    region = "us-east-1"
}

variable "ami_value" {
  description = "This is AMI for the instance"
}

variable "awsinstance_type" {
  description = "This is the instance type, for example: t2.micro"
}

resource "aws_instance" "example" {
    ami = var.ami_value
    instance_type = var.awsinstance_type
}