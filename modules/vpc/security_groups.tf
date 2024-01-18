
resource "aws_security_group" "allow-all-traffice" {

  vpc_id = aws_vpc.main.id
  ingress = [{
    description      = "Allow inbound trafiic"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
  }]
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "allow all outbound traffic"
    from_port        = 0
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]

  tags = {
    "Name" = "${local.comman_name}-ssh-sg"
  }

}