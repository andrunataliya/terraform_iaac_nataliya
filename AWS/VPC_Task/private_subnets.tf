# Private Subnets
resource "aws_subnet" "private_subnet_cidr1" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.priv_subnet_cidr1}"
  availability_zone = "${var.region}${var.az1}"
  tags              = "${merge(var.tags, map("Name","private_subnet_cidr1"))}"
}

resource "aws_subnet" "private_subnet_cidr2" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.priv_subnet_cidr2}"
  availability_zone = "${var.region}${var.az2}"
  tags              = "${merge(var.tags, map("Name","private_subnet_cidr2"))}"
}

resource "aws_subnet" "private_subnet_cidr3" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.priv_subnet_cidr3}"
  availability_zone = "${var.region}${var.az3}"
  tags              = "${merge(var.tags, map("Name","private_subnet_cidr3"))}"
}
