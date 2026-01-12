dev:
	docker-compose --env-file .env.development up -d

down:
	docker-compose down