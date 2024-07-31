variable "my-list" {
    default = ["jhb", "cpt", "dbn"]
    type = list
}

output "user" {
  value = var.my-list
}