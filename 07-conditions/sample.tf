output "sample" {
  value = var.a == 1 ? "SAME" : "NOT SAME"
}

// cond ? TURE_VAL : FALSE_VAL

variable "a" {
  default = 1
}

resource "null" "sample" {
  count = var.a == 1 ? 1 : 0
}