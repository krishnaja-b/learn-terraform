data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "instances" {
  for_each = var.instances
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = each.value["type"]
  vpc_security_group_ids = ["sg-003f987727c69b5e1"]
  tags = {
    Name=each.value["name"]
  }
}

variable "instances" {
  default = {
    catalouge= {
        name="catalouge"
         type="t3.micro"
    }
    user={
        name="user"
        type="t3.small"
    }
  }
  }

output "ec2" {
  value =[for k,v in aws_instance.instances : v.public_ip]
}



