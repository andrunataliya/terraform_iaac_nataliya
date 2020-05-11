# Values
region                   = "us-east-1"
region_name              = "virginia"
key_name                 = "nataliyas_state_class_tf"

vpc_cidr                 = "10.0.0.0/16"

# private and public subnets cidr blocks
priv_subnet_cidr1        = "10.0.1.0/24"
priv_subnet_cidr2        = "10.0.2.0/24"
priv_subnet_cidr3        = "10.0.3.0/24"

pub_subnet_cidr1         = "10.0.101.0/24"
pub_subnet_cidr2         = "10.0.102.0/24"
pub_subnet_cidr3         = "10.0.103.0/24"

# availability zones for subnets
az1                      = "a"
az2                      = "b"
az3                      = "c"

# IG and NAT routes
nat_cidr_block           = "0.0.0.0/0"
ig_cidr_block            = "0.0.0.0/0"

# ec2 instance
ami                      = "ami-0323c3dd2da7fb37d"
instance_type            = "t2.micro"

# security group
sg_name                  = "allow_traffic"
ingress_cidr_blocks      = ["0.0.0.0/0"]
egress_cidr_blocks       = ["0.0.0.0/0"]

# tags
tags = {
    Name                 = "VPC_PROJECT"
    Environment          = "Dev"
    Department           = "IT"
    Team                 = "Infrastructure"
    Created_by           = "Nataliya"
}
