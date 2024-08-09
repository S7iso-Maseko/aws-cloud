output "ip-address" {
  value = "http://${aws_instance.server.public_ip}"
}