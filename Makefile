.PHONY: build
build:
	docker-compose build

.PHONY: up
up:
	docker-compose up -d

.PHONY: down
down:
	docker-compose down

.PHONY: logs
logs:
	docker-compose logs -f

.PHONY: rebuild
rebuild: down build up

.PHONY: clean
clean:
	docker-compose down -v

.PHONY: prune
prune:
	docker system prune -a -f --volumes

allclean: clean prune

allcleanup: clean prune up

.PHONY: in
in:
	docker exec -it  fastapi_app /bin/bash