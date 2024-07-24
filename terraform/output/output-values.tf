resource "aws_eip" "NQ3D_eip" {
  domain = "vpc"
}

output "public_ip" {
  value = aws_eip.NQ3D_eip.public_ip
}