module "ec2" {
  for_each = var.instances
  source = "./ec2"
  component=each.value["name"]
  instance_type=each.value["type"]
}

module "sg" {
  source="./sg"
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


