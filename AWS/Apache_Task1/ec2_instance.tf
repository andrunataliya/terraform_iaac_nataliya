resource "aws_instance" "web" {
  ami           = "ami-0d6621c01e8c2de2c"
  instance_type = "t2.large"
  availability_zone = "us-west-2a"
  key_name = "${aws_key_pair.us-west-2-key.key_name}"
  security_groups = ["${aws_security_group.allow_tls.name}"]
  user_data = "${file("install_apache.sh")}"
  tags = {
    Name = "Task1"
  }
}