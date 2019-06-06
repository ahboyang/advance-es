provider "aws" {
  region = "${var.aws_region}"
}

data "aws_availability_zones" "available" {}

// Setup Security Group
resource "aws_security_group" "es-aa-ingress" {
    name = "access_to_es_aa"
    vpc_id = "vpc-09871c59c22bf348c"
    
    ingress {
        cidr_blocks = [
          "10.0.0.0/8"
        ]
        
        from_port = 22
        to_port = 22
        protocol = "tcp"
    }
    
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

// Setup ec2 instance

resource "aws_instance" "es_aa_node1" {
    ami ="${var.ami_id}"
    instance_type = "${var.ec2_instance_type}"
    key_name = "${var.ami_key_pair_name}"
    security_groups = ["${aws_security_group.es-aa-ingress.id}"]
    tags {
        Name = "es-aa-node1"
    }
    
    subnet_id = "subnet-0d71457cf0f11ece8"
}

resource "aws_instance" "es_aa_node2" {
    ami ="${var.ami_id}"
    instance_type = "${var.ec2_instance_type}"
    key_name = "${var.ami_key_pair_name}"
    security_groups = ["${aws_security_group.es-aa-ingress.id}"]
    tags {
        Name = "es-aa-node2"
    }
    
    subnet_id = "subnet-0d71457cf0f11ece8"
}

resource "aws_instance" "es_aa_node3" {
    ami ="${var.ami_id}"
    instance_type = "${var.ec2_instance_type}"
    key_name = "${var.ami_key_pair_name}"
    security_groups = ["${aws_security_group.es-aa-ingress.id}"]
    tags {
        Name = "es-aa-node3"
    }
    
    subnet_id = "subnet-0d71457cf0f11ece8"
}