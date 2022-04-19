FROM debian:buster

COPY . .

EXPOSE 9000

RUN sh ./tools/setup.sh

WORKDIR /var/www/html/

RUN cp -a /tmp/wordpress/. /var/www/html/ && \
    mkdir /var/www/html/wordpress && \
    chown -R www-data:www-data /var/www/html/wordpress/

CMD ["php-fpm7.3", "-F", "-R"]