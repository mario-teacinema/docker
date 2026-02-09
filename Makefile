dev:
	docker compose --env-file .env.development up -d --wait

down:
	docker compose down

status:
	docker compose ps

logs:
	docker compose logs -f