#! /bin/bash
sudo yum update
sudo yum install -y httpd
sudo chkconfig httpd on
cd /var/www/httpd
