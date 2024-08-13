resource "aws_instance" "public_vm" {
  ami                         = var.ami
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.custom_sg.id]
  subnet_id                   = aws_subnet.public_sub.id
  key_name                    = aws_key_pair.key_pair.key_name
  associate_public_ip_address = true

  tags = {
    Name = "nqs-pub-instance"
  }
}