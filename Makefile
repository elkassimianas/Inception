all:
	docker-compose -f srcs/docker-compose.yml up -d --build
clean:
	docker kill $(docker ps -q)
	docker rm -v $(docker ps -a -q)
	docker rmi $(docker images -a)
	docker volume rm $(docker volume ls)
down:
	docker-compose -f srcs/docker-compose.yml down

config:
	docker-compose -f srcs/docker-compose.yml config

re: down clean all
