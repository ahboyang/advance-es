variable "aws_region" {
  default = "ap-southeast-1"
}

variable "env" {
  default = "DEV"
}

variable "vpc_cidr" {
  default = "10.86.0.0/16"
}

variable "ec2_ami"{
  default = "ami-03097abf0db1cdff2"
}

variable "ec2_instance_type"{
  default = "t2.micro"
}