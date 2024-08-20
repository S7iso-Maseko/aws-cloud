resource "aws_instance" "vm" {
  ami           = "0a2202cf4c36161a1"
  instance_type = "t2.micro"

  iam_instance_profile        = aws_iam_instance_profile.ssm_instance_profile.name
  vpc_security_group_ids      = [aws_security_group.custom_sg.id]
  subnet_id                   = aws_subnet.public_sub.id
  key_name                    = aws_key_pair.key_pair.key_name
  associate_public_ip_address = true

  tags = {
    Name = "nqs-instance"

    # VPC & OO
  }
}
