resource "aws_instance" "sample" {
  ami           = "ami-066acb7c27b9de55f"
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.sg_id]
}

variable "sg_id" {} // same variable name used in main.tf in module "ec2" block