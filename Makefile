include .env

init:
	docker compose exec db bash -c 'mysql -uroot -p$(ROOT_PASS) < /docker-entrypoint-initdb.d/world_x.sql'
	docker compose exec db bash -c 'mysql -uroot -p$(ROOT_PASS) < /docker-entrypoint-initdb.d/sakila-schema.sql'
	docker compose exec db bash -c 'mysql -uroot -p$(ROOT_PASS) < /docker-entrypoint-initdb.d/sakila-data.sql'
	docker compose exec db bash -c 'mysql -uroot -p$(ROOT_PASS) -e "GRANT ALL ON world_x.* TO user;"'
	docker compose exec db bash -c 'mysql -uroot -p$(ROOT_PASS) -e "GRANT ALL ON sakila.* TO user;"'
sql:
	docker compose exec db bash -c 'mysql -u $(DB_USER) -p$(DB_PASS) $(DB_NAME)'
sh:
	docker compose exec db bash -c 'mysqlsh --mysqlx -uroot -proot -h localhost -P 33060'
