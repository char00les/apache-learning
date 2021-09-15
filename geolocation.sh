#!/bin/bash

#
# Using IP Based Geolocation with Apache
#

yum install mod_geoip

cat /etc/httpd/conf.d/geoip.conf

yum install -y php

vi /var/www/html/geoiphtml.php

<html>
<body>
<?php 
$country_name = apache_note("GEOIP_COUNTRY_NAME");
print "Country: " . $country_name;
?>
</body>
</html>
	
vi /etc/httpd/conf/httpd.conf
<Directory "/var/www">
	AllowOverride None
	#Allow open access
	#Require all granted
	#SetEnvIf GEOIP_COUNTRY_NAME US BlockCountry
	#Deny from env=BlockCountry 
	SetEnvIf GEOIP_COUNTRY_NAME US AllowCountry
	Allow from env=AllowCountry 
</Directory>

#Need github
#mod_geoip2
