variable "ami1" {
	default = "ami-026f33d38b6410e30"
}

variable "type1" {
	default = "t2.small"
}

variable "name1" {
	default = "Server_Name"
}
variable "env1" {
	default = "Test"
}


variable "vpcname" {
	default = "Default Network"
}




resource "aws_instance" "mod1" {
	ami = var.ami1
	instance_type = var.type1
	tags = {
		Name = var.name1
		Env = var.env1
	}
}

resource "aws_vpc" "vpc1" {
	cidr_block = "10.0.0.0/16"
	instance_tenancy = "default"
	tags = {
		Name = var.vpcname
	}
}



	
