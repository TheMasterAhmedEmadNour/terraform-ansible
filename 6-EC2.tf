resource "aws_instance" "puplic1" {
  #   count = length(var.ec2-name)
  ami                    = var.ami-id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.publicsub1.id
  key_name               = aws_key_pair.test-key.key_name
  vpc_security_group_ids = [aws_default_security_group.sg.id]
  user_data              = file("ansible.sh")
  tags = {
    "Name" = "ec2-puplic"
  }
}
resource "aws_instance" "puplic2" {
  #   count = length(var.ec2-name)
  ami                    = var.ami-id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.publicsub2.id
  key_name               = aws_key_pair.test-key.key_name
  vpc_security_group_ids = [aws_default_security_group.sg.id]
  user_data              = file("ansible.sh")
  tags = {
    "Name" = "ec2-puplic2"
  }
}
resource "aws_instance" "private1" {
  #   count = length(var.ec2-name)
  ami                    = var.ami-id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.privatesub1.id
  key_name               = aws_key_pair.test-key.key_name
  vpc_security_group_ids = [aws_default_security_group.sg.id]
  tags = {
    "Name" = "ec2-private"
  }
}
resource "aws_instance" "private2" {
  #   count = length(var.ec2-name)
  ami                    = var.ami-id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.privatesub2.id
  key_name               = aws_key_pair.test-key.key_name
  vpc_security_group_ids = [aws_default_security_group.sg.id]
  tags = {
    "Name" = "ec2-private2"
  }
}
# fxtdytyvgjv