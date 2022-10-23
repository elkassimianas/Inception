FROM debian:buster

COPY . .

EXPOSE 9000

COPY ./tools/setup.sh .

RUN sh ./tools/setup.sh

WORKDIR /var/www/html/

RUN mkdir /var/www/html/wordpress && \
    cp -a /tmp/wordpress/. /var/www/html/ && \
    chown -R www-data:www-data /var/www/html

COPY ./conf/wp-config.php /var/www/html

WORKDIR /tmp
COPY ./tools/start.sh .

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -O /usr/local/bin/wp
RUN chmod +x /usr/local/bin/wp

ENTRYPOINT ["sh", "start.sh"]