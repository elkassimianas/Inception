FROM debian:buster

RUN apt-get update; apt-get upgrade -y

RUN apt-get install -y vsftpd openssl openssh-server

COPY ./conf/vsftpd.conf /etc/

RUN yes ""| openssl req -x509 -nodes -days 365 -newkey \
 rsa:2048 -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt

COPY ./tools/start.sh .

ENTRYPOINT ["sh", "start.sh"]
