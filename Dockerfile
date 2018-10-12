FROM python:3.7.0-alpine3.7

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

ADD requirements.txt /code/

RUN apk update && \
    apk add postgresql-dev

RUN pip install -r requirements.txt

ADD . /code/

