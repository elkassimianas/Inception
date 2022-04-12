#apt-get update
#apt-get install -y nginx
#apt-get install -y php7.3 php7.3-fpm php7.3-curl php7.3-gd
#apt-get install -y php-mysql php-mbstring php-zip php-gd php-xml php-pear php-gettext php-cgi
#apt-get install  -y php-curl php-intl php-soap php-xmlrpc
#chmod 777 /etc/nginx/nginx.conf
#cp ./tools/default /etc/nginx/sites-available/
#cp ./tools/localhost.crt /root/
#cp ./tools/localhost.key /root/
#cp ./tools/index.php /var/www/html/
#echo "daemon off;" >> /etc/nginx/nginx.conf
service php7.3-fpm start
service nginx start
service php7.3-fpm status