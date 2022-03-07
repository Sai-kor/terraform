variable "demo" {
  type = string
  default = "Hello World"
}

output "demo" {
  value = var.demo //reference of variable from a resource
}

// can declare an empty variable too ,then tf interrupts and asks for user input

variable "demo1" {}


output "demo1" {
  value = var.demo1
}

variable "demo2" {
  type = number
  default = 100
}

variable "demo3" {
  description = "Demo variable for bool demo"
  type = bool
  default = true
}

variable "demo4" {
  description = "List variable"
  default = [
  100,
  "abc"
  ]
}

variable "demo5" {
  description = "Map variable"
  default = {
    course = "Devops",
    timing = "6am",
    is_started = true
  }
}
