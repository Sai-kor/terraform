provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "sa-newbuck-1"
    key    = "04-modules/terraform.tfstate"
    region = "us-east-1"
  }
}

module "sg" {
  source = "./sg"  //source of that particular location ./sg local directory
}

module "ec2" {
  source = "./ec2"
  sg_id  = module.sg.sg_id
}
