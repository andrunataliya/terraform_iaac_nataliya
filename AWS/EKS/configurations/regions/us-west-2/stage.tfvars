environment = "stage"
region = "us-west-2"
s3_bucket = "nataliya-terraform-eks-oregon"       #Will be used to set backend.tf
s3_folder_project = "application"                 #Will be used to set backend.tf
s3_folder_region = "us-west-2"                    #Will be used to set backend.tf
s3_folder_type = "state"                          #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate.json"   #Will be used to set backend.tf




vpc_id = "vpc-0f5e29ab2d815d5c8"
subnet1 = "subnet-00299ef8f8b59a6c1"
subnet2 = "subnet-02545375ec740bc3d"
subnet3 = "subnet-01a35b7b29441ed07"
cluster_name = "oregon-cluster"
instance_type = "t2.micro"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"