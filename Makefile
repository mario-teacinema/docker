dev:
	docker-compose --env-file .env.development up -d

down:
	docker-compose down

status:
	docker-compose ps

logs:
	docker-compose logs -f

wait:
	@echo "Waiting for services to be healthy..."
	@until [ "`docker inspect -f {{.State.Health.Status}} postgres`" == "healthy" ]; do sleep 1; done
	@until [ "`docker inspect -f {{.State.Health.Status}} redis`" == "healthy" ]; do sleep 1; done
	@echo "All services are healthy!"