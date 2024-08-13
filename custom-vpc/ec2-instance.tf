resource "aws_instance" "ubuntu_vm" {
    ami = "ami-0a2202cf4c36161a1"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.custom_sg.id]
    subnet_id = aws_subnet.public_sub.id
    key_name = aws_key_pair.key_pair.key_name
    associate_public_ip_address = true

    tags = {
      Name = "nqs-instance"
    }
}