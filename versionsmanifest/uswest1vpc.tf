#Resource block for us-west-1
resource "aws_vpc" "myuswest1vpc" {
  cidr_block = "10.2.0.0/16"
  provider = aws.aws-us-west-1
  tags = {
    "Name" = "myuswest1vpc"
  }
}