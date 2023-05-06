resource "aws_route53_record" "record" {
  zone_id = "Z013366722COOZOYCJ4IN"
  name    = "${"var.component"}-dev.aws43.xyz"
  type    = "A"
  ttl     = 30
  records = [aws_instance_ec2_private_ip]
}
