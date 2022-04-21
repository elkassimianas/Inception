FROM debian:buster

WORKDIR  /home/app

COPY . .

EXPOSE 3306

RUN apt-get update -y && \
    apt-get install mariadb-server -y && \
    sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./conf/wp.sql /

CMD [ "sh", "./tools/setup.sh" ]