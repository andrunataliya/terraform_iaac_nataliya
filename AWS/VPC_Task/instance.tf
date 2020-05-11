resource "aws_instance" "httpd" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  availability_zone      = "${var.region}${var.az1}"
  vpc_security_group_ids = ["${aws_security_group.allow_traffic.id}"]
  subnet_id              = "${aws_subnet.public_subnet_cidr1.id}"
  key_name               = "${aws_key_pair.us-east-1-key.key_name}"
  user_data              = "${file("install_httpd.sh")}"

  tags                   = "${var.tags}"
}