cp -a /tmp/wordpress/. /var/www/html/
chown -R www-data:www-data /var/www/html/
./conf/wp-config.php /var/www/html
php-fpm7.3 -F -R