#Terraform Block
terraform {
  required_version = "~>1.8.4"
  required_providers {
    aws = {
        source = "haschicorp/aws"
        version = "~>5.51.1"   
         }
  }
}

#Provider Block
provider "aws" {
  region = "ap-south-1"
  profile = "default"
}