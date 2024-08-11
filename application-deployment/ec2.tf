resource "aws_instance" "server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.nq_key.key_name
  vpc_security_group_ids = [aws_security_group.nq_webSg.id]
  subnet_id              = aws_subnet.nq_sub1.id

  connection {
    type        = "ssh"
    user        = "terraform"
    private_key = file("C://Users//Lenovo//.ssh//id_rsa")
    host        = self.public_ip
  }

  provisioner "file" {
    source      = "../Flask/app.py"
    destination = "/home/terraform/app.py"
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'Hello from the remote instance'",
      "sudo apt update -y",                  
      "sudo apt-get install -y python3-pip",
      "cd /home/terraform",
      "sudo pip3 install flask",
      "sudo python3 app.py",
    ]
  }
}