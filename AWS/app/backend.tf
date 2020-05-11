terraform {
  required_version = "0.11.14"

  backend "s3" {
    bucket = "state-class-nataliya"
    key    = "projects/tools/asg-module/terraform.tfstate"
    region = "us-east-1"
  }
}
