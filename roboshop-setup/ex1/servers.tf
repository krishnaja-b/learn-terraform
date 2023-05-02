resource "aws_instance" "frontend" {
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-003f987727c69b5e1"]
  tags = {
    name="frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z013366722COOZOYCJ4IN"
  name    = "frontend-dev.aws43.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-003f987727c69b5e1"]
  tags = {
    name="mongodb"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = "Z013366722COOZOYCJ4IN"
  name    = "mongodb-dev.aws43.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}


resource "aws_instance" "catalouge" {
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-003f987727c69b5e1"]
  tags = {
    name="catalouge"
  }
}
resource "aws_route53_record" "catalouge" {
  zone_id = "Z013366722COOZOYCJ4IN"
  name    = "catalouge-dev.aws43.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalouge.private_ip]
}


resource "aws_instance" "cart" {
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-003f987727c69b5e1"]
  tags = {
    name="cart"
  }
}
resource "aws_route53_record" "cart" {
  zone_id = "Z013366722COOZOYCJ4IN"
  name    = "cart-dev.aws43.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}


resource "aws_instance" "user" {
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-003f987727c69b5e1"]
  tags = {
    name="user"
  }
}
resource "aws_route53_record" "user" {
  zone_id = "Z013366722COOZOYCJ4IN"
  name    = "user-dev.aws43.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}


resource "aws_instance" "redis" {
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-003f987727c69b5e1"]
  tags = {
    name="redis"
  }
}
resource "aws_route53_record" "redis" {
  zone_id = "Z013366722COOZOYCJ4IN"
  name    = "redis-dev.aws43.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}


resource "aws_instance" "mysql" {
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-003f987727c69b5e1"]
  tags = {
    name="mysql"
  }
}
resource "aws_route53_record" "mysql" {
  zone_id = "Z013366722COOZOYCJ4IN"
  name    = "mysql-dev.aws43.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}


resource "aws_instance" "payment" {
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-003f987727c69b5e1"]
  tags = {
    name="payment"
  }
}
resource "aws_route53_record" "payment" {
  zone_id = "Z013366722COOZOYCJ4IN"
  name    = "payment-dev.aws43.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}


resource "aws_instance" "rabbitmq" {
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-003f987727c69b5e1"]
  tags = {
    name="rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z013366722COOZOYCJ4IN"
  name    = "rabbitmq-dev.aws43.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}


resource "aws_instance" "shipping" {
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-003f987727c69b5e1"]
  tags = {
    name="shipping"
  }
}
resource "aws_route53_record" "shipping" {
  zone_id = "Z013366722COOZOYCJ4IN"
  name    = "shipping-dev.aws43.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}





