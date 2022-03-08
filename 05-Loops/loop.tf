resource "random_string" "random" {
  count            = 3
  length           = 16
  special          = false
}

output "random_string" {
  value = random_string.random.upper
}