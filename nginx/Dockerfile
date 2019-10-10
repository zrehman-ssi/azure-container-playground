FROM nginx:latest

COPY ./nginx.conf /etc/nginx/nginx.conf

COPY ./azure-container-playground /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/azure-container-playground /etc/nginx/sites-enabled