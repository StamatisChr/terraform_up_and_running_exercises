terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami = "ami-0fb653ca2d3203ac1"

  instance_type = terraform.workspace == "default" ? "t2.medium" : "t2.micro"

}

output "instance-type" {
  value = aws_instance.example.instance_type
  description = "EC2 instance type to see the different instance type per workspace"
}

output "current-workspace" {
  value = terraform.workspace
  description = "To show the terraform workspace the resources where deployed in"
}
