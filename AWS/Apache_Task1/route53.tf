resource "aws_route53_record" "www" {
  zone_id = "Z06129541L0MQ7X9FI20E"
  name    = "www.devops-guru-master.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web.public_ip}"]
}