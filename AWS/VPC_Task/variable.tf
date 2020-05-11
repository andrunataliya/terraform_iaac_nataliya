# Translation
variable "region" {}
variable "region_name" {}
variable "key_name" {}
variable "vpc_cidr" {}

variable "az1" {}
variable "az2" {}
variable "az3" {}

variable "tags" {type = "map"}

variable "priv_subnet_cidr1" {}
variable "priv_subnet_cidr2" {}
variable "priv_subnet_cidr3" {}
variable "pub_subnet_cidr1" {}
variable "pub_subnet_cidr2" {}
variable "pub_subnet_cidr3" {}

variable "nat_cidr_block" {}
variable "ig_cidr_block" {}

variable "ami" {}
variable "instance_type" {}
variable "sg_name" {}

variable "ingress_cidr_blocks" {type = "list"}
variable "egress_cidr_blocks" {type = "list"}