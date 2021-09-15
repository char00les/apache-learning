#!/bin/bash

#
# load balancer
#

httpd -M | grep proxy

echo "$myip www.mylabserver.com" >> /etc/hosts
echo "$myip www.newdomain.com" >> /etc/hosts
echo "$myip www.newdomain2.com" >> /etc/hosts

mkdir /var/www/newdomain2.come
echo "this is the page for my newdomain2.com" > newdomain2.com/index.html

vi /etc/httpd/conf/httpd.conf

<VirtualHost $IP>
	ServerName www.newdomain2.com
	DocumentRoot /var/www/html/newdomain2.com
</VirtualHost>

<VirtualHost $IP>
	ServerName www.newdomain.com
	DocumentRoot /var/www/html/newdomain.com
</VirtualHost>


vi /etc/httpd/conf.d/proxy.conf

<proxy balancer://imagset>
	BalancerMemeber http://www.newdomain.com
	BalancerMemeber http://www.newdomain2.com
	ProxySet lbmethod=bytraffic
</proxy>

ProxyPass "/images" "balancer://imgset/"
ProxyPassReverse "images" "balancer://imgset/"

vi /etc/httpd/conf.d/lbmanager.conf

<location "/balancer-manager">
	SetHandler balancer-manager
	Allow from all
</location>
