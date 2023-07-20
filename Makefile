include .env
sql:
	docker compose exec db bash -c 'mysql -u $(DB_USER) -p$(DB_PASS) $(DB_NAME)'
