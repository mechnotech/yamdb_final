###### YaMDB Учебный проект Яндекс Практикум

![Workflow check](https://github.com/mechnotech/yamdb_final/workflows/YAMDB-final/badge.svg)

**Описание проекта:**
Учебная версия API
использует Django REST API
базу данных [Postgresql](https://www.postgresql.org) и вебсервер [NGINX](https://nginx.org)

**Для старта с нуля:**

Установка автоматическая при push в репозиторий Github с помощью Github Workflow (см файл yamdb_workflow.yaml в папке .github/workflow!)
В нем описаны переменные типа ${{ secrets.SOME_VAR }} - эти переменные надо задать в разделе settings репозитория Github

Пример secrets.ENV (Переменая будет импортирована на VPS и в контейнер с Django при deploy)

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

Перед тем как приступить к разворачиванию проекта, необходимо создать VPS(виртуальный сервер) c доступом по ключу SSH (для теста был выбран Яндекс.Облако)
После создания виртуалной машины, необходимо подготовить её:
- нужно зайти на VPS, создать папку yamdb_final в домашней папке пользователя (например /home/mech/yamdb_final)
- установить git, docker, docker-compose `sudo apt install -y docker.io docker-compose git`

Теперь VPS готов принмать автоматические обновления при изменениях в master ветке Github (миграция изменений БД настроена выполняться автоматически при каждом обновлении)

Если необходимо создать суперпользователя для админки Django, то после первого деплоя, нужно зайти в работающий контейнер c Django `sudo docker exec -it ymdb_web bash`
и внутри него выполнить:

- `python3 manage.py createsuperuser` (по желанию, чтоб управлять через админку)
- `python3 manage.py loaddata fixtures.json` - (по желанию, заполняет тестовыми данными базу данных. ВАЖНО! выполнять только для первого деплоя, иначе удалит все текущие данные в базе данных проекта)
- `exit` - для выхода из контейнера

Сервис будет доступен по основному IP адресу (или домену) сайта

Админка _IP-adress_/admin

Над проектом работали: Евгений Шумилов, Александр Иванов, Дмитрий Морозов 
 
Для контактов: vk.com/mech2045  

