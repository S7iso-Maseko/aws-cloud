resource "aws_vpc" "NQ3D_vpc" {
  cidr_block = "10.10.0.0/16"
}

resource "aws_security_group" "NQ3D_sg" {
  name = "attribute-firewall"
  vpc_id = aws_vpc.NQ3D_vpc.id
  tags = {
    Name = "NQ3D-security-group"
  }
}

resource "aws_security_group_rule" "NQ3D_ingress" {
  type              = "ingress"
  from_port         = var.app_port
  to_port           = var.app_port
  protocol          = "tcp"
  cidr_blocks       = [var.vpn_ip]
  security_group_id = aws_security_group.NQ3D_sg.id
}