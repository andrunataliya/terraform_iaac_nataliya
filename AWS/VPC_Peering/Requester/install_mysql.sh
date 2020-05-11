#!/bin/bash
sudo yum update -y
sudo yum install mysql-server -y
sudo yum install mysql mysql-server -y
sudo service mysqld start
sudo chkconfig mysqld on

sudo /sbin/chkconfig --levels 235 mysqld on
sudo mysql_secure_installation

sudo chown -R mysql:mysql /var/lib/mysql/*
sudo chmod -R 755 /var/lib/mysql/*

sudo cd /var/lib/mysql/
sudo touch mysql.sock
sudo chown -R mysql:mysql mysql.sock


# sudo service mysqld status
sudo service mysqld restart