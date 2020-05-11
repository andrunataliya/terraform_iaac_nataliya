data "aws_ami" "centos7" {
  most_recent = true
  owners      = ["679593333241"]

  filter {
    name   = "state"
    values = ["available"]
  }

  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }
}

data "aws_ami" "amazon" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.20200406.0-x86_64-ebs*"]
  }
}

data "aws_ami" "centos6" {
  most_recent = true
  owners      = ["679593333241"]

  filter {
    name   = "state"
    values = ["available"]
  }

  filter {
    name   = "name"
    values = ["CentOS Linux 6 x86_64 HVM EBS *"]
  }
}

resource "aws_instance" "bastion" {
  ami                    = "${data.aws_ami.centos7.id}"             # CentOS 7 for bastion host
  instance_type          = "${var.instance_type}"
  availability_zone      = "${var.region}${var.az1}"
  vpc_security_group_ids = ["${aws_security_group.bastion.id}"]
  subnet_id              = "${aws_subnet.public_subnet_cidr1.id}"
  key_name               = "${aws_key_pair.us_east_2_key.key_name}"

  tags = "${var.tags}"
}

resource "aws_instance" "web" {
  ami                    = "${data.aws_ami.amazon.id}"
  instance_type          = "${var.instance_type}"
  availability_zone      = "${var.region}${var.az1}"
  vpc_security_group_ids = ["${aws_security_group.web.id}"]
  subnet_id              = "${aws_subnet.public_subnet_cidr1.id}"
  key_name               = "${aws_key_pair.us_east_2_key.key_name}"
  user_data              = "${file("install_httpd.sh")}"

  tags = "${var.tags}"
}

resource "aws_instance" "db" {
  ami                    = "${data.aws_ami.centos6.id}"
  instance_type          = "${var.instance_type}"
  availability_zone      = "${var.region}${var.az1}"
  vpc_security_group_ids = ["${aws_security_group.db.id}"]
  subnet_id              = "${aws_subnet.private_subnet_cidr1.id}"
  # key_name               = "${aws_key_pair.us_east_2_key.key_name}"
  key_name               = "${aws_key_pair.web.key_name}"
  user_data              = "${file("install_mysql.sh")}"

  tags = "${var.tags}"
}
