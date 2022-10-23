apt-get update
apt-get upgrade -y
apt-get install -y php7.3 php7.3-fpm php7.3-curl php7.3-gd
apt-get install -y php-mysql php-mbstring php-zip php-gd php-xml php-pear php-gettext php-cgi
apt-get install  -y php-curl php-intl php-soap php-xmlrpc
apt-get install wget
echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf
mkdir -p /var/run/php

######################################
######       WordPress       #########
######################################

cd /tmp
apt-get install  vim -y
apt-get install curl -y
curl -LO https://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz
cp /tmp/wordpress/wp-config-sample.php /tmp/wordpress/wp-config.php
