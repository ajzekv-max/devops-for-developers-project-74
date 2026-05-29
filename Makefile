LOCAL_UID := $(shell id -u)
LOCAL_GID := $(shell id -g)

setup:
	env UID=$(LOCAL_UID) GID=$(LOCAL_GID) docker compose run --rm app make setup

dev:
	env UID=$(LOCAL_UID) GID=$(LOCAL_GID) docker compose up

down:
	docker compose down
