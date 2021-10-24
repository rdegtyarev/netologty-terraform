# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "web" {
  ami           = "ami-00399ec92321828f5"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

data "aws_caller_identity" "current" {}

data "aws_region" "current" {}