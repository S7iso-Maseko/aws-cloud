resource "aws_network_acl" "nacl" {
  vpc_id = aws_vpc.custom_vpc.id

  ingress {
    protocol = "tcp"
    rule_no = 100
    action = "allow"
    cidr_block = "0.0.0.0/0"
    from_port = 80
    to_port = 80
  }
  
  ingress {
    protocol = "tcp"
    rule_no = 99
    action = "deny"
    cidr_block = "197.0.0.230/32"
    from_port = 80
    to_port = 80
  }

  egress {
    protocol = "tcp"
    rule_no = 100
    action = "allow"
    cidr_block = "0.0.0.0/0"
    from_port = 1024
    to_port = 65532
  }

  tags = {
    Name = "nqs-nacl"
  }
}

resource "aws_network_acl_association" "nacl_association" {
  network_acl_id = aws_network_acl.nacl.id
  subnet_id = aws_subnet.public_sub.id
}