data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-Devops-Practice"
  owners           = ["902151144678"]
}