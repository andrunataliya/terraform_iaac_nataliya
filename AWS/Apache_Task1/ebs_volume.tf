resource "aws_ebs_volume" "example" {
  availability_zone = "us-west-2a"
  size              = 100

  tags = {
    Name = "Task1"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/xvdh"
  volume_id   = "${aws_ebs_volume.example.id}"
  instance_id = "${aws_instance.web.id}"
}