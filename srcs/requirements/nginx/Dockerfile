FROM debian:buster

WORKDIR  /home/app

COPY . .

RUN sh ./tools/setup.sh

EXPOSE 80

CMD ["service","nginx", "start"]


#install wordpress
