LOCAL_UID := $(shell id -u)
LOCAL_GID := $(shell id -g)
COMPOSE := docker compose
COMPOSE_FILE := -f docker-compose.yml

setup:
	env UID=$(LOCAL_UID) GID=$(LOCAL_GID) $(COMPOSE) run --rm app make setup

dev:
	env UID=$(LOCAL_UID) GID=$(LOCAL_GID) $(COMPOSE) up

down:
	$(COMPOSE) down

test:
	$(COMPOSE) $(COMPOSE_FILE) up --abort-on-container-exit --exit-code-from app
