FROM debian:buster

WORKDIR /home/app

COPY . .

EXPOSE 9000

RUN sh ./tools/setup.sh

CMD ["php-fpm7.3", "-F", "-R"]