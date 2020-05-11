#!/bin/bash
yum update -y
sudo amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
sudo yum install -y httpd mariadb-server
sudo yum install mysql -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo chown -R apache:apache /var/www/html
# echo "<!DOCTYPE html>
# <html>
# <head><center><b>Using Terraform user_data to install httpd for VPC_Task</b></center></head>
# </html>" > /var/www/html/index.html

