resource "aws_instance" "vm" {
  ami = "0a2202cf4c36161a1"
  instance_type = "t2.micro"

  iam_instance_profile = aws_iam_instance_profile.ssm_instance_profile.name
  vpc_security_group_ids      = [aws_security_group.custom_sg.id]
  subnet_id                   = aws_subnet.public_sub.id
  key_name                    = aws_key_pair.key_pair.key_name
  associate_public_ip_address = true  

  tags = {
    Name = "nqs-instance"

    # VPC & OO
  }
}

#2: Deploying cloud infrastructure using Terrafrom and the AWS console, to show a basic understanding of how it works. I have setup digital twins in the cloud, using a VPC, and a Windows EC2 instance -	This allowed me and my team to test products that would be sent to	clients in an environment similar to the one they have, giving us a huge	overview of what issues they might face before sending it to them.