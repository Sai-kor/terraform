data "aws_vpc" "selected" {
  default = true
}

output "aws_vpc" {
  value = data.aws_vpc.selected
}