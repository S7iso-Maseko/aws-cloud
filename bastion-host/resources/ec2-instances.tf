resource "aws_instance" "public_vm" {
    ami = "ami-0a2202cf4c36161a1"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.custom_sg.id]
    subnet_id = aws_subnet.public_sub.id
    key_name = aws_key_pair.key_pair.key_name
    associate_public_ip_address = true

    tags = {
      Name = "nqs-pub-instance"
    }
}

resource "aws_instance" "private_vm" {
    ami = "ami-0a2202cf4c36161a1"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.custom_sg_private.id]
    subnet_id = aws_subnet.private_sub.id
    key_name = aws_key_pair.key_pair.key_name
    associate_public_ip_address = true

    tags = {
      Name = "nqs-priv-instance"
    }
}


resource "aws_instance" "bastion_vm" {
    ami = "ami-0a2202cf4c36161a1"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.bastion_sg.id]
    subnet_id = aws_subnet.public_sub.id
    key_name = aws_key_pair.key_pair.key_name
    associate_public_ip_address = true

    tags = {
      Name = "nqs-bastion-instance"
    }
}