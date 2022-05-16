resource "aws_instance" "web-1" {
    ami = var.imagename
    availability_zone = "us-east-1a"
    instance_type = "t2.micro"
    key_name = "LaptopKey"
    subnet_id = "${aws_subnet.subnet1-public.id}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true	
    tags = {
        Name = "Server-1"
        Env = "Prod"
        Owner = "Sree"
	    CostCenter = "ABCD"
    }
    user_data = <<-EOF
		#!/bin/bash
        sed 's/PasswordAuthentication no/PasswordAuthentication yes/' -i /etc/ssh/sshd_config
        systemctl restart sshd
        service sshd restart
    EOF
}

resource "aws_instance" "web-2" {
    ami = var.imagename
    availability_zone = "us-east-1a"
    instance_type = "t2.micro"
    key_name = "LaptopKey"
    subnet_id = "${aws_subnet.subnet1-public.id}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true	
    tags = {
        Name = "Server-2"
        Env = "Prod"
        Owner = "Sree"
	    CostCenter = "ABCD"
    }
    	user_data = <<-EOF
		#!/bin/bash
        sed 's/PasswordAuthentication no/PasswordAuthentication yes/' -i /etc/ssh/sshd_config
        systemctl restart sshd
        service sshd restart
        EOF
}