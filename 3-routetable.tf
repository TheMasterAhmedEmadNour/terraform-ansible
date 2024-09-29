resource "aws_route_table" "public" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "puplic"
  }
}
resource "aws_route" "public-route" {
  route_table_id = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id
}
resource "aws_route_table_association" "publicsub1" {
  subnet_id = aws_subnet.publicsub1.id
  route_table_id= aws_route_table.public.id
}
resource "aws_route_table_association" "publicsub2" {
  subnet_id = aws_subnet.publicsub2.id
  route_table_id = aws_route_table.public.id
}
#---------------------------------------------------------
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "private"
  }
}
resource "aws_route" "private-route" {
  route_table_id = aws_route_table.private.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_nat_gateway.NAT.id
}
resource "aws_route_table_association" "privatesub1" {
  subnet_id = aws_subnet.privatesub1.id
  route_table_id = aws_route_table.private.id
}
#-------------------------------------------------------------
resource "aws_route_table" "private2" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "private2"
  }
}
resource "aws_route" "private-route2" {
  route_table_id = aws_route_table.private2.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_nat_gateway.NAT2.id
}
resource "aws_route_table_association" "privatesub2" {
  subnet_id = aws_subnet.privatesub2.id
  route_table_id = aws_route_table.private2.id
}
