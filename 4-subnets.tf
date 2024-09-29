resource "aws_subnet" "publicsub1" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.puplic-subnet1-cidr
  availability_zone = "${var.region}a"
  tags = {
    Name = "publicsub1"
  }
}
resource "aws_subnet" "publicsub2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.puplic-subnet2-cidr
  availability_zone = "${var.region}b"
  tags = {
    Name = "publicsub2"
  }
}
resource "aws_subnet" "privatesub1" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.private-subnet1-cidr
  availability_zone = "${var.region}a"
  tags = {
    Name = "privatesub1"
  }
}
resource "aws_subnet" "privatesub2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.private-subnet2-cidr
  availability_zone = "${var.region}b"
  tags = {
    Name = "privatesub2"
  }
}