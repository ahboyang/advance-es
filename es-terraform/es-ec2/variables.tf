variable "env" {
  default = "DEV"
}

variable "aws_region" {
  default = "ap-southeast-1"
}

variable "ami_name" {
  default = "ES EC2"
}

variable "ami_id" {
  default = "ami-0dad20bd1b9c8c004"
}

variable "ami_key_pair_name" {
  default = "advance-devops"
} 

variable "ec2_instance_type"{
  default = "t2.micro"
}
