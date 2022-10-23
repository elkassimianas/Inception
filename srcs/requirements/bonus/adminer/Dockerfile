FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install wget php php-mysql -y

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-mysql.php -O index.php

CMD ["php", "-S", "0.0.0.0:7777"]