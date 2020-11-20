FROM python:3.8.5
LABEL name='API YaMDB Yandex Practicum project CI' version=1
WORKDIR /code
RUN cp ./requirements.txt ./ && pip install -r requirements.txt
COPY ./ .