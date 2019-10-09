FROM python:3.7

COPY . /home/apps/flask-playground

WORKDIR /home/apps/flask-playground

RUN python -m venv venv && venv/bin/pip install -r requirements.txt

CMD ["venv/bin/uwsgi", "--socket", "0.0.0.0:5000", "--protocol", "http", "-w", "startup:app"]