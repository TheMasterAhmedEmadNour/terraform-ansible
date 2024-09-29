resource "aws_vpc" "myvpc" {
  cidr_block           = var.vpc-cidr
  enable_dns_hostnames = true
  tags = {
    Name = "myvpc"
  }
}
#create the vpc
# resource "aws_vpc" "my_VPC" {
#   cidr_block           = "192.0.0.0/16"
#   enable_dns_support   = true
#   enable_dns_hostnames = true
#   tags = {
#     Name = "MY_VPC"
#   }
# }