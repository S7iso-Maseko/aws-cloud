resource "aws_instance" "vm" {
  ami           = "ami-0a2202cf4c36161a1"
  instance_type = "t3.micro"

  vpc_security_group_ids      = [aws_security_group.custom_sg.id]
  subnet_id                   = aws_subnet.public_sub.id
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              dnf update -y
              dnf install httpd -y
              systemctl start httpd
              systemctl enable httpd
              EOF


  tags = {
    Name = "nqs-instance"
  }
}
