FROM python:3.8.5
LABEL name='API YaMDB Yandex Practicum project CI' version=1
WORKDIR /code
COPY ./ .
RUN mkdir /static
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt



