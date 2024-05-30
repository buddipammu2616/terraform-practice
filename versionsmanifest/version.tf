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



#Provider Block for us-west-1
provider "aws" {
  region = "us-west-1"
  profile = "default"
  alias = "aws-us-west-1"
}
