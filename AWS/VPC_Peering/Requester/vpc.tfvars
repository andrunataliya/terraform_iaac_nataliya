# Values
region                   = "us-east-2"
region_name              = "ohio"

vpc_cidr                 = "192.168.0.0/16"

# private and public subnets cidr blocks
pub_subnet_cidr1         = "192.168.1.0/24"
pub_subnet_cidr2         = "192.168.2.0/24"
pub_subnet_cidr3         = "192.168.3.0/24"

priv_subnet_cidr1        = "192.168.11.0/24"
priv_subnet_cidr2        = "192.168.12.0/24"
priv_subnet_cidr3        = "192.168.13.0/24"


# availability zones for subnets
az1                      = "a"
az2                      = "b"
az3                      = "c"

# IG and NAT routes
nat_cidr_block           = "0.0.0.0/0"
ig_cidr_block            = "0.0.0.0/0"

# ec2 instances
instance_type            = "t2.micro"
key_name                 = "nataliyas_project_state_tf"


# tags
tags = {
    Name                 = "VPC_PROJECT"
    Environment          = "Dev"
    Department           = "IT"
    Team                 = "Infrastructure"
    Created_by           = "Nataliya"
}
