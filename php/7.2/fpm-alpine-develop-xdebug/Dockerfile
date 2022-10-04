FROM graycore/magento-php:7.2-fpm-alpine-develop

LABEL maintainer="damien@graycore.io"

USER root:root

RUN apk --no-cache add pcre-dev ${PHPIZE_DEPS} \ 
  && pecl install xdebug-2.9.8 \
  && docker-php-ext-enable xdebug \
  && apk del pcre-dev ${PHPIZE_DEPS}

COPY conf/x-debug-php.ini /usr/local/etc/php/conf.d

USER app:app
