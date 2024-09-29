# Security Group for EC2 Instances
resource "aws_security_group" "instance_sg" {
  vpc_id = aws_vpc.myvpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Launch Configuration for ASG
resource "aws_launch_configuration" "asg_config" {
  image_id = "ami-0c55b159cbfafe1f0" # Example Ubuntu AMI
  instance_type = "t2.micro"
  security_groups = [aws_security_group.instance_sg.id]

  lifecycle {
    create_before_destroy = true
  }
}

# Auto Scaling Group
resource "aws_autoscaling_group" "asg" {
  vpc_zone_identifier = [aws_subnet.privatesub1.id, aws_subnet.privatesub2.id]
  launch_configuration = aws_launch_configuration.asg_config.id
  min_size = 2
  max_size = 3
  desired_capacity = 2
}
