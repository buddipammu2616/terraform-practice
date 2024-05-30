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