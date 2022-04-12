FROM debian:buster

WORKDIR  /home/app

COPY . .

EXPOSE 443

RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get install -y php7.3 php7.3-fpm php7.3-curl php7.3-gd && \
    chmod 777 /etc/nginx/nginx.conf && \
    echo "daemon off;" >> /etc/nginx/nginx.conf

COPY  ./tools/default /etc/nginx/sites-available/
COPY  ./tools/localhost.crt /root/
COPY  ./tools/localhost.key /root/
COPY  ./tools/index.php /var/www/html/

CMD ["sh", "./tools/setup.sh"]
#install wordpress
