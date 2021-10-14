FROM nginx:1.18-alpine

MAINTAINER Damien Retzinger <damien@graycore.io>

RUN apk update && apk add --no-cache inotify-tools openssl 
RUN mkdir /etc/nginx/certs \
  && echo -e "\n\n\n\n\n\n\n" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/certs/nginx.key -out /etc/nginx/certs/nginx.crt

COPY ./conf/nginx.conf /etc/nginx/
COPY ./conf/default.conf.template /etc/nginx/templates/

COPY scripts/entrypoint.sh /docker-entrypoint.d/
COPY scripts/nginxReloader.sh /root/scripts/

RUN chmod +x /docker-entrypoint.d/entrypoint.sh
RUN chmod +x /root/scripts/nginxReloader.sh

ENV MAGENTO2_UPSTREAM=localhost
ENV MAGENTO2_UPSTREAM_PORT=9000
ENV NGINX_PORT=8000
ENV NGINX_TLS_PORT=8443

EXPOSE 8443

WORKDIR /var/www/html