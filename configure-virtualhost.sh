#!/bin/bash



mkdir mylabserver
mkdir newdomain
echo "this is the page for my mylabserver.com" > mylabserver/index.html
echo "this is the page for my newdomain.com" > newdomain/index.html


#/etc/hosts

echo "$myip www.mylabserver.com" >> /etc/hosts
echo "$myip www.newdomain.com" >> /etc/hosts


#Place this inside /etc/httpd/conf/httpd.conf

NameVirtualHost $IP

#Instead of putting an IP, you can do HOSTNAME
#<VirtualHost $HOSTNAME>
#</VirtualHost>

<VirtualHost $IP>
	ServerName www.mylabserver.com
	DocumentRoot /var/www/html/mylabserver
	#Makes sure the filepath exist
	#Errorlog /var/log/httpd/mylabserver/error_log
</VirtualHost>

<VirtualHost $IP>
	ServerName www.newdomain.com
	DocumentRoot /var/www/html/newdomain
</VirtualHost>

#Apply updates
systemctl restart httpd
