environment = "qa"
region = "us-east-2"
s3_bucket = "nataliya-terraform-eks-ohio"         #Will be used to set backend.tf
s3_folder_project = "application"                 #Will be used to set backend.tf
s3_folder_region = "us-east-2"                    #Will be used to set backend.tf
s3_folder_type = "state"                          #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate.json"   #Will be used to set backend.tf




vpc_id = "vpc-0bf4f08a72c04fe03"
subnet1 = "subnet-0ca5a4c7eef38574e"
subnet2 = "subnet-097144764a5cee8bb"
subnet3 = "subnet-0e249bca77332e82d"
cluster_name = "ohio-cluster"
instance_type = "t2.micro"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"