build:
	docker-compose build

up:
	docker-compose up

stop:
	docker-compose stop

shell:
	docker-compose run --rm web python manage.py shell

sh:
	docker-compose run --rm web bash

delete:
	docker-compose down --rmi local -v
