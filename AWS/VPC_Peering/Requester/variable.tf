# Translation
variable "region" {}

variable "region_name" {}

variable "vpc_cidr" {}

variable "az1" {}
variable "az2" {}
variable "az3" {}

variable "tags" {
  type = "map"
}

variable "priv_subnet_cidr1" {}
variable "priv_subnet_cidr2" {}
variable "priv_subnet_cidr3" {}
variable "pub_subnet_cidr1" {}
variable "pub_subnet_cidr2" {}
variable "pub_subnet_cidr3" {}

variable "nat_cidr_block" {}
variable "ig_cidr_block" {}

variable "instance_type" {}

variable "key_name" {}

