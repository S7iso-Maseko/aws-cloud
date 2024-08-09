resource "aws_key_pair" "nq_key" {
  key_name   = var.key_name
  public_key = file("C://Users//Lenovo//.ssh//id_rsa.pub")
}