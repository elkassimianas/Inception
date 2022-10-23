
wp plugin --allow-root --path=/var/www/html/ install redis-cache --activate
wp redis --allow-root --path=/var/www/html/ enable

php-fpm7.3 -F -R