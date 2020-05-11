# resource "null_resource" "mysql_db" {
#   depends_on = ["aws_instance.db"]

#   triggers = {
#     always_run = "${timestamp()}"
#   }

#   provisioner "remote-exec" {
#     # connection {
#     #   type        = "ssh"
#     #   user        = "centos"
#     #   private_key = "${file("~/.ssh/id_rsa")}"
#     #   host        = "${aws_instance.db.private_ip}"
#     # }

#     inline = [
#       "sudo yum update -y",
#       "sudo yum install mysql-server -y",
#       "sudo yum install mysql mysql-server -y",
#       "sudo service mysqld start",
#       "sudo mysql_secure_installation",
#       "sudo chkconfig mysqld on",
#       "sudo chown mysql:mysql -R /var/lib/mysql/*",
#       "sudo chmod 755 -R /var/lib/mysql/*",
#       "sudo service mysql restart",
#     ]
#   }
# }
