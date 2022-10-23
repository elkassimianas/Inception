FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install redis -y

COPY ./conf/redis.conf /etc/redis/

CMD ["redis-server", "--protected-mode no"]