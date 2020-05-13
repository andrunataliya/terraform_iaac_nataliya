environment = "production"
region = "eu-west-1"
s3_bucket = "nataliya-terraform-eks-ireland"      #Will be used to set backend.tf
s3_folder_project = "application"                 #Will be used to set backend.tf
s3_folder_region = "eu-west-1"                    #Will be used to set backend.tf
s3_folder_type = "state"                          #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate.json"   #Will be used to set backend.tf




vpc_id = "vpc-05c1e03dc654fe05a"
subnet1 = "subnet-0c327a27dbf2745ab"
subnet2 = "subnet-073b4b10362683ed3"
subnet3 = "subnet-060b11f731170815f"
cluster_name = "ireland-cluster"
instance_type = "t2.micro"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"