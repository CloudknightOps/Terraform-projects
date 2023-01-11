terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "Vscode"
}


resource "aws_instance" "app_server" {
  ami           = "ami-06878d265978313ca"
  instance_type = "t2.micro"
  key_name      = "my_key_pair"

  tags = {
    Name = "Terraform-Test"
  }
}
