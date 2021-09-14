#!/bin/bash



#make directory
mkdir /var/ww/html/perl-cgi

#Crete file
touch /var/www/html/perl-cgi/welcome.pl
#Add info
echo 'print "Content-type: text/plain\n\n"' >> /var/www/html/perl-cgi/welcome.pl
echo 'print "This is your mod_perl CGI content!\n"'>> /var/www/html/perl-cgi/welcome.pl

#To apply the settings
systemctl restart httpd



