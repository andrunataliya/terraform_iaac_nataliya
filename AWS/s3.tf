resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-nataliya"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}