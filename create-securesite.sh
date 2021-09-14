#!/bin/bash

#Place this inside /etc/httpd/conf/httpd.conf
<Directory "var/www/html/seucesite">
  AuthName "Secure Site"
  AuthType Basic
  AuthUserFile /etc/httpd/passwd
  #Testing
  #Require all greanted
  Require valid-user
<Directory>

#use links to check

#To apply the new settings
systemctl restart httpd

#Create user password
htpasswd -c /etc/httpd/passwd secureuser1

#Verify 
cat /etc/httpd/passwd/


#
#
#


<Directory "var/www/html/seucesite">
  AllowOverride AuthConfig
<Directory>

#Create Directory Example One
touch /var/www/html/securesite/.htaccess
echo "AuthName Secure Site" >> /var/www/html/securesite/.htaccess
echo AuthType Basic >> /var/www/html/securesite/.htaccess
echo AuthUserFile /etc/httpd/securepasswd >> /var/www/html/securesite/.htaccess
echo Require valid-user >> /var/www/html/securesite/.htaccess

#Create Directory Example Two
rm /var/www/html/securesite/.htaccess

touch /var/www/html/securesite/.htaccess
echo "AuthName Secure Site" >> /var/www/html/securesite/.htaccess
echo "AuthType Basic ">> /var/www/html/securesite/.htaccess
echo "AuthUserFile /etc/httpd/securepasswd" >> /var/www/html/securesite/.htaccess
echo "AuthGroupFile /etc/httpd/securegroupfile" >> /var/www/html/securesite/.htaccess
echo "Require group adm" >> /var/www/html/securesite/.htaccess

vi /etc/httpd/securegroupfile
adm: user1 user2

htpasswd /etc/httpd/securepasswd user1
htpasswd /etc/httpd/securepasswd user2
 
