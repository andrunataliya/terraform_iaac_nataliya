resource "aws_key_pair" "us_east_2_key" {
  key_name   = "${var.key_name}"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

resource "aws_key_pair" "web" {
  key_name   = "web_key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

# resource "aws_key_pair" "us_east_2_key" {
#   key_name   = "${var.key_name}"
#   public_key = "${file("~/.ssh/id_rsa.pub")}"
# }
