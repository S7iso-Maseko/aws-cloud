resource "aws_eip" "NQ3D_eip" {
  domain = "vpc"
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
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["${aws_eip.NQ3D_eip.public_ip}/32"]
  security_group_id = aws_security_group.NQ3D_sg.id
}