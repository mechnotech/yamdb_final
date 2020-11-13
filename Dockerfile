FROM python:3.8.5
LABEL name='API YaMDB Yandex Practicum project CI' version=1
WORKDIR /code
COPY ./ . ./requirements.txt ./
RUN mkdir /static && pip install --upgrade pip && pip install -r requirements.txt