variable "aws_region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  default = "terraform-key"
}

variable "workers" {
  default = {
    ubuntu = {
      ami  = "ami-0f918f7e67a3323f0"
      user = "ubuntu"
    }

    debian = {
      ami  = "ami-0e1d06225679bc1c5"
      user = "admin"
    }

    amazonlinux = {
      ami  = "ami-002f6e91abff6eb96"
      user = "ec2-user"
    }
  }
}