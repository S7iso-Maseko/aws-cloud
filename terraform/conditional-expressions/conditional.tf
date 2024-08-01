variable "environments" {
  type = list
  default = ["dev", "prod"]
}

output "env" {
  value = var.environments[0] == "dev" ? "developer" : "production"
}