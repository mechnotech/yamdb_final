###### YaMDB Учебный проект Яндекс Практикум

**Описание проекта:**
Учебная версия API
использует Django REST API
и базу данных Postgresql

**Для старта с нуля:**

Установить [Docker](https://docs.docker.com/engine/install/ubuntu/) (и docker-compose)

Затем зайти в корневую паку YaMDB и создать файл .env следующего содержания:

>DB_ENGINE=django.db.backends.postgresql
>
>DB_NAME=yamdb
>
>POSTGRES_USER=yamdb
>
>POSTGRES_PASSWORD=###password###
>
>DB_HOST=db
>
>DB_PORT=5432
>
>SECRET_KEY='######'

Затем там же в паке выполнить `docker-compose up`

Найти контейнер web (скорее всего будет называться apiyamdb_web_1) `docker container ls` 
Зайти в контейнер `docker exec -it apiyamdb_web_1 bash`
и внутри него выполнить:

- `python3 manage.py migrate`
- `python3 manage.py createsuperuser` (по желанию, чтоб управлять через админку)
- `python3 manage.py loaddata fixtures.json` - (по желанию, заполняет тестовыми данными базу данных)

Сервис будет доступен по адресу 127.0.0.1:8000

Админка 127.0.0.1:8000/admin

