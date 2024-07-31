variable "my-map" {
  type = map
  default = {
    name = "sfiso",
    age = "26",
    gender = "male"
  }
}

output "var_value" {
  value = var.my-map
}