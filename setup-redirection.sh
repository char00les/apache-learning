#!/bin/bash


#Redirect Status Codes
#301: Permanent
#302: Temporary 

#Redirect Status Codes
#303: See Other
#401: Gone


#
#mod_alias <--Most common
#mod_rewrite <--Regex


httpd -M | grep alias

grep mod_alias /etc/httpd/conf.modules.d/*


vi /etc/httpd/conf/httpd.conf

<VirtualHost $IP>
	ServerName www.mylabserver.com
	DocumentRoot /var/www/html/mylabserver
	#Redirect / http://www.newdomain.com
	Redirect permanent / http://www.newdomain.com
	#Redirect 301 / http://www.newdomain.com
	RedirectMatch (.*)\.jpg$ http://images.newdomain.com$1.jpg
	#RedirectMatch permanent (.*)\.jpg$ http://images.newdomain.com$1.jpg
	#RedirectMatch 301 (.*)\.jpg$ http://images.newdomain.com$1.jpg
</VirtualHost>

<VirtualHost $IP>
	ServerName www.newdomain.com
	DocumentRoot /var/www/html/newdomain
</VirtualHost>
