FROM nginx:1.18-alpine

MAINTAINER Damien Retzinger <damien@graycore.io>

COPY ./conf/nginx.conf /etc/nginx/
COPY ./conf/default.conf.template /etc/nginx/templates/

ENV MAGENTO2_UPSTREAM=localhost
ENV MAGENTO2_UPSTREAM_PORT=9000
ENV NGINX_PORT=80

EXPOSE 80

WORKDIR /var/www/html
