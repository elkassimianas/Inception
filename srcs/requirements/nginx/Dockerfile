FROM debian:buster

WORKDIR  /home/app

COPY . .

EXPOSE 443

RUN sh ./tools/setup.sh

CMD ["service", "nginx", "start"]
