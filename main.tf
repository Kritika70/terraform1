variable "region" {
  description = "value of region"
  default = "ap-south-1"
  type = string
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.94.1"
    }
  }
}

provider "aws" {
region = var.region
}

resource "aws_instance" "myserver" {
  ami="ami-0e35ddab05955cf57"
  instance_type = "t3.micro"
  tags = {
    Name="SampleServer"
  }
}
