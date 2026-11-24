#!/bin/bash

dnf update -y
dnf install -y httpd stress

systemctl enable httpd
systemctl start httpd

echo "<h1>CloudWatch Alarm Project</h1> <h2>Monitoring EC2 Instances</h2> <h3> - By Md Kazi Sajiduddin</h3>" > /var/www/html/index.html