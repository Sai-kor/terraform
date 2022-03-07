variable "demo" {
  default = "Hello World"
}

output "demo" {
  value = var.demo //reference of variable from a resource
}

// can declare an empty variable too ,then tf interrupts and asks for user input

variable "demo1" {}
