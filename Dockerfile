FROM tiangolo/uwsgi-nginx-flask:python:3.7

COPY . /home/apps/flask-playground

WORKDIR /home/apps/flask-playground

RUN python -m venv venv && venv/bin/pip install -r requirements.txt