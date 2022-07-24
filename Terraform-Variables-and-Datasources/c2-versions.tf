terraform {
  required_version = "~> 0.14" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}

# Resource Block
resource "aws_instance" "myec2vm" {
  ami           = data.aws_ami.amzlinux2
  instance_type = var.aws_instance
  user_data     = file("${path.module}/app1-install.sh")
  key_name = var.keypair
  vpc_security_group_ids = [aws_security_group.vpc_web.id, aws_security_group.vpc_ssh.id ]

  tags = {
    "name" = "myec2vm"
  }
}