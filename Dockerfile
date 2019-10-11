FROM tiangolo/uwsgi-nginx-flask:python3.7

ENV UWSGI_INI=./app.ini

COPY . /home/apps/flask-playground

WORKDIR /home/apps/flask-playground

RUN python -m venv venv && venv/bin/pip install -r requirements.txt