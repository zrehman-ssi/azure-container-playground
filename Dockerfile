FROM python:3.7

COPY . /home/apps/flask-playground

WORKDIR /home/apps/flask-playground

RUN python -m venv venv && venv/bin/pip install -r requirements.txt

COPY ./auzre-cotainer-playground.service /etc/systemd/system/

ENTRYPOINT service start azure-container-playground && enable