resource "aws_instance" "my_ec2" {
  ami = "ami-1234"
  instance_type = "t2.micro"
  count = 3

  tags = {
    Name = "instance-${count.index+1}"
  }
}

variable "users" {
  type = list
  default = ["sfiso", "alice", "bob"]
}

resource "aws_iam_user" "user" {
  name = var.users[count.index]
  count = 3
}