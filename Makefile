.PHONY: watch up logs down test

watch:
	@docker compose watch --no-up & # https://github.com/docker/compose/issues/11344#issuecomment-1891078058

up:
	@docker compose up -d --force-recreate --build

logs:
	@docker compose logs -f

down:
	@docker compose down

test:
	@curl -X PUT -T 2.sh http://127.0.0.1/upload/2.sh