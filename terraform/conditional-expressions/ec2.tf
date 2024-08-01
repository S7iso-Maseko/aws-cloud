resource "aws_instance" "name" {
  ami = "ami-05842291b9a0bd79f"
  instance_type = var.environment == "dev" ? "t2.micro" : "t2.small"
}

variable "environment" {
  default = "dev"
}