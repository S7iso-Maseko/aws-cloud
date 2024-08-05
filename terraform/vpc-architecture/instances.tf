resource "aws_instance" "NQ_instance" {
  ami = ""
  instance_type = "t2.micro"

  tags = {
    Name = "NQ-linux-instance"
  }
}