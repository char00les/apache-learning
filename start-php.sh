#!/bin/bash

#install php
yum install -y php

#create file
vi /var/www/httpd/hellow.php

<html>
<head>
<title>PHP Test</title>
</head>
<body>
<?php echo '<p>Congrats on your first php configuration.</p>';?>
</body>

</html>




