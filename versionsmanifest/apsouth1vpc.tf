#Resource block for apsouth1 vpc
resource "aws_vpc" "myapsouth1vpc" {
    cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "myapsouth1vpc"
  }
}
