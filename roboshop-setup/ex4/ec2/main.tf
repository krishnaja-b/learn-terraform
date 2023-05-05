data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "ec2" {
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-003f987727c69b5e1"]
  tags = {
    Name=var.component
  }
}
resource "aws_route53_record" "record" {
  zone_id = "Z013366722COOZOYCJ4IN"
  name    = "${var.component}-dev.aws43.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}

variable "component" {}
variable "instance_type" {}
