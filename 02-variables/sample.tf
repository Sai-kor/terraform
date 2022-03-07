variable "demo" {
  default = "Hello World"
}

output "demo" {
  value = var.demo //reference of variable from a resource
}