resource "aws_key_pair" "us-east-1-key" {
  key_name   = "nataliyas_state_class_tf"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
