resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"
  tags       = "${merge(var.tags, map("Name","main"))}"
}
