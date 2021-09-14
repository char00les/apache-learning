#!/bin/bash

#Start Up file

#Install apache
yum install -y httpd httpd-manual

#Another Alternative way to install
#yum groupinstall -y web-server

#Start and Enable httpd
systemctl start httpd
systemctl enable httpd

#Get local IP
ifconfig -a 


curl http://$IP

#Install Links
yum install -y links

links http://$IP/manual

systemctl status httpd

#
# Configuration
#

#main configuration directory
ls -al /etc/httpd/

#Main Configuration
ls -al /etc/httpd/httpd.conf


#the default local for files
ls -al /var/www/html



