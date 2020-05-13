environment = "dev"
region = "us-east-1"
s3_bucket = "nataliya-terraform-eks"              #Will be used to set backend.tf
s3_folder_project = "application"                 #Will be used to set backend.tf
s3_folder_region = "us-east-1"                    #Will be used to set backend.tf
s3_folder_type = "state"                          #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate.json"   #Will be used to set backend.tf




vpc_id = "vpc-0a3e0619a19c83b3d"
subnet1 = "subnet-02db709af12c127b1"
subnet2 = "subnet-0ad327577db2ccc8e"
subnet3 = "subnet-06113ee17288012e8"
cluster_name = "my-cluster"
instance_type = "t2.micro"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"