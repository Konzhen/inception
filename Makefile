build:
	mkdir -p $(HOME)/data/mariadb
	mkdir -p $(HOME)/data/wordpress
	docker compose -f srcs/docker-compose.yml build
	
up: build
	docker compose -f srcs/docker-compose.yml up
	
down:
	docker compose -f srcs/docker-compose.yml down --remove-orphans
	
stop:
	docker compose -f srcs/docker-compose.yml stop
	
clean: down
	sudo rm -rvf $(HOME)/data
	docker system prune -af
	docker image prune -af
	docker volume prune -af
	docker network prune -f
	docker volume rm srcs_mariadb srcs_wordpress
