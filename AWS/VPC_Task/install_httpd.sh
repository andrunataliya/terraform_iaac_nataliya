#!/bin/bash
yum update -y
amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
yum install -y httpd mariadb-server
systemctl start httpd
systemctl enable httpd
chown -R apache:apache /var/www/html
echo "<!DOCTYPE html>
<html>
<head><center><b>Using Terraform user_data to install httpd for VPC_Task</b></center></head>
<body><center>
<img src="https://miro.medium.com/max/1400/1*9-ILOQ1Yxautyc_uIguhVw.png">
</center></body>
</html>" > /var/www/html/index.html

