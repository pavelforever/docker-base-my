init: docker-down-clear docker-pull docker-build docker-up #api-init
up: docker-up
down: docker-down
restart: down up

docker-up:
	docker compose up -d

docker-down:
	docker compose down --remove-orphans

docker-down-clear:
	docker compose down -v --remove-orphans

docker-pull:
	docker compose pull

docker-build:
	docker compose build

#api-init: api-composer-install

api-composer-install:
	docker compose run --rm api-php-cli composer install
