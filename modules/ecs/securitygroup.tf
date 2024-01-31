resource "aws_security_group" "ecs-sg" {
  name        = "${var.app_name}-vpc"
  #vpc_id = var.vpc_id
  vpc_id = "vpc-0ca732e0086009e56"

  ingress {
    protocol         = "tcp"
    from_port        = 8080
    to_port          = 8080
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


  egress {
    protocol         = "-1"
    from_port        = 0
    to_port          = 0
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}