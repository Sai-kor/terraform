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

output "demo2" {
  value = var.demo2
}

output "demo3" {
  value = var.demo3
}
output "demo4" {
  value = var.demo4[0]
}

output "mapvars" {
  value = var.demo5["course"]  //key
}

# varaiblefrom tfvars

variable "input1" {
  type = number
} #we will get vars from tfvars file
variable "input2" {}

output "input1" {
  value = var.input1
}

output "input2" {
  value = var.input2
}