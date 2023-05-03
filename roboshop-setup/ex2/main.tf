data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-Devops-Practice"
  owners           = ["902151144678"]
}

resource "aws_instance" "frontend" {
  count=5
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-003f987727c69b5e1"]

}