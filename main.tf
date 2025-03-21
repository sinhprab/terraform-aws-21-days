terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.11.2"
}
provider "aws" {
  region = "eu-west-2"
}
resource "aws_instance" "app_server" {
  ami           = "ami-08ace71784e9fd346"
  instance_type = "t3.micro"
}
