FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install python3 -y ; apt-get upgrade -y

COPY ./src/index.html .

CMD ["python3", "-m", "http.server", "8080"]