#! /bin/bash
sudo yum update
sudo yum install -y httpd
sudo chkconfig httpd on
echo "<h1>Thank you for viewing my Page</h1>" | sudo tee /var/www/html/index.html
