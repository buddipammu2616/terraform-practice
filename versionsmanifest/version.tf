#Terraform Block
terraform {
  required_version = "~>1.8.4"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>5.0"   
         }
  }
}

#Provider Block for ap-south-1
provider "aws" {
  region = "ap-south-1"
  profile = "default"
}

#provider Block for us-east-1
provider "aws" {
  region = "us-east-1"
  profile = "default"
  alias = "aws-us-east-1"
}

#Provider Block for us-west-1
provider "aws" {
  region = "us-west-1"
  profile = "default"
  alias = "aws-us-west-1"
}

#Resource Block for us east 1 vpc
resource "aws_vpc" "myuseast1vpc" {
  cidr_block = "10.0.0.0/16"
  provider = aws.aws-us-east-1
  tags = {
    "Name" = "myuseast1vpc"
      }
}