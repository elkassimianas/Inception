all:
	sudo docker-compose -f srcs/docker-compose.yml up -d --build
clean:
	sudo docker kill $(docker ps -q)
	sudo docker rm -v $(docker ps -a -q)
	sudo docker rmi $(docker images -a)
	sudo docker volume rm $(docker volume ls)
down:
	sudo docker-compose -f srcs/docker-compose.yml down

config:
	sudo docker-compose -f srcs/docker-compose.yml config

re: down clean all