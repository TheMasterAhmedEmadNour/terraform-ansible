resource "aws_eip" "natip" {
  
}
resource "aws_eip" "natip2" {
  
}
resource "aws_nat_gateway" "NAT" {
  allocation_id = aws_eip.natip.id
  subnet_id     = aws_subnet.publicsub1.id

  tags = {
    Name = "gw NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}
resource "aws_nat_gateway" "NAT2" {
  allocation_id = aws_eip.natip2.id
  subnet_id     = aws_subnet.publicsub2.id

  tags = {
    Name = "gw NAT2"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}