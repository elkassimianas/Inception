FROM debian:buster

COPY . .

EXPOSE 9000

RUN sh ./tools/setup.sh

WORKDIR /var/www/html/

RUN mkdir /var/www/html/wordpress && \
    cp -a /tmp/wordpress/. /var/www/html/ && \
    chown -R www-data:www-data /var/www/html

COPY ./conf/wp-config.php /var/www/html

CMD ["php-fpm7.3", "-F", "-R"]