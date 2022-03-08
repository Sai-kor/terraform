resource "aws_instance" "sample" {
  ami = "ami-066acb7c27b9de55f"
  instance_type = "t3.micro"
}

output "out" {
  value = aws_instance.sample.public_ip
}