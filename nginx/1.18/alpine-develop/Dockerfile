FROM nginx:1.18-alpine

MAINTAINER Damien Retzinger <damien@graycore.io>

RUN apk update && apk add openssl
RUN mkdir /etc/nginx/certs \
  && echo -e "\n\n\n\n\n\n\n" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/certs/nginx.key -out /etc/nginx/certs/nginx.crt

COPY ./conf/nginx.conf /etc/nginx/
COPY ./conf/default.conf /etc/nginx/conf.d/

EXPOSE 8443

WORKDIR /var/www/html
