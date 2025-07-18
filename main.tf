provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2" {
  ami           = var.ami
  key_name          = var.key
  instance_type = var.instance
  tags = {
    Name = "ec2-machine"
  }
}

resource "aws_security_group" "groups" {
  name        = "security-group"
  description = "Allow ssh and http"

  ingress {
    from_port   = "22"
    to_port     = "22"
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "tcp"
  }

  ingress {
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

