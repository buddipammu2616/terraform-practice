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
#Resource block for s3 bucket creating
# Define the provider and the region
provider "aws" {
  region = "us-east-1" # Change to your preferred region
}

# Define the S3 bucket resource
resource "aws_s3_bucket" "my_bucket" {
  bucket = "buddipammukushi" # Change to your unique bucket name

  # Optionally, configure bucket settings
  acl    = "public-read" # Access control

  tags = {
    Name        = "My bucket"
  }
}
