resource "aws_lb" "app_lb" {
  name               = "app-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb_sg.id]
  subnets            = [aws_subnet.publicsub1.id, aws_subnet.publicsub2.id]

  enable_deletion_protection = false
  tags = {
    Environment = "loadblancer"
  }
}
