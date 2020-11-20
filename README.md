###### YaMDB Учебный проект Яндекс Практикум

![Workflow check](https://github.com/mechnotech/yamdb_final/workflows/YAMDB-final/badge.svg)

**Описание проекта:**
Учебная версия API
использует Django REST API
базу данных [Postgresql](https://www.postgresql.org) и вебсервер [NGINX](https://nginx.org)

**Для старта с нуля:**

Установка автоматическая при push в репозиторий Github с помощью Github Workflow (см файл yamdb_woekflow.yaml в папке .github/workflow!)
В нем описаны переменные типа ${{ secrets.SOME_VAR }} - эти переменные надо задать в раздеде settings репозитория Github
Перед push нужно создать .env файл (в корне репозиторя) следующего содержания:

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

Так же нужен VPS(виртуальный сераер) c доступом по ключу SSH (для теста был выбран Яндекс.Облако)
После установки, нужно зайти на сервер и в папке yamdb_final отредактировать
файл .env - согласно настройкам вашего .env

Зайти в работающий контейнер c Django `sudo docker exec -it ymdb_web bash`
и внутри него выполнить:

- `python3 manage.py migrate`
- `python3 manage.py createsuperuser` (по желанию, чтоб управлять через админку)
- `python3 manage.py loaddata fixtures.json` - (по желанию, заполняет тестовыми данными базу данных)
- `exit` - для выхода из контейнера

Сервис будет доступен по основному IP адресу (или домену) сайта

Админка _IP-adress_/admin

Над проектом работали: Евгений Шумилов, Александр Иванов, Дмитрий Морозов 
 
Для контактов: vk.com/mech2045  

