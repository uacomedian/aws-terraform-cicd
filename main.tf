provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "my_server" {
  ami           = "ami-0084a47cc718c111a" # Це ID Amazon Linux у Франкфурті
  instance_type = var.instance_type

  tags = {
    Name = "Terraform-Server"
  }
}