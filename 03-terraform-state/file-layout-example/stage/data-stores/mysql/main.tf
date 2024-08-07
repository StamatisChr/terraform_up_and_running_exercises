terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  
  backend "s3" {

    # # This backend configuration is filled in automatically at test time by Terratest. If you wish to run this example
    # # manually, uncomment and fill in the config below.

    # bucket         = "stam-terraform-up-and-running-state-hhhahjsidgtw"
    # key            = "mysql/terraform.tfstate"
    # region         = "eu-central-1"
    # dynamodb_table = "stam-terraform-up-and-running-locks"
    # encrypt        = true

  }
}




provider "aws" {
  region = "eu-central-1"
}

resource "aws_db_instance" "example" {
  identifier_prefix   = "stam-terraform-up-and-running"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t3.micro"
  skip_final_snapshot = true
  db_name             = "example_database"

  
  username = var.db_username
  password = var.db_password
}