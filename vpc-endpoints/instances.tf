resource "aws_instance" "public_vm" {
  ami           = "ami-0a2202cf4c36161a1"
  instance_type = "t3.micro"
  vpc_security_group_ids      = [aws_security_group.custom_sg.id]
  subnet_id                   = aws_subnet.public_sub.id
  associate_public_ip_address = true
  iam_instance_profile = aws_iam_instance_profile.ec2_instance_profile.name

  tags = {
    Name = "nqs-pub-instance"
  }
}