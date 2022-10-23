FROM debian:buster

RUN apt update && apt install vsftpd openssl openssh-server -y

COPY tools/start.sh .

RUN yes "" | openssl req -x509 -nodes -days 365 -newkey rsa:2048\
    -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt

COPY conf/vsftpd.conf /etc

ENTRYPOINT [ "/bin/bash", "-i", "start.sh" ]