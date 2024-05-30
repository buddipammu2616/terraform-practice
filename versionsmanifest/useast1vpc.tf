# Resource Block for us east 1 
resource "aws_vpc" "myuseast1vpc" { 
  cidr_block = "10.1.0.0/16"
  provider = aws.aws-us-east-1
  tags = {
    "Name" = "myuseast1vpc"
  }
}