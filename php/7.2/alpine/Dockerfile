FROM php:7.2-fpm-alpine

MAINTAINER Damien Retzinger <damien@graycore.io>

RUN apk update && apk add \
  gzip \
  freetype-dev \
  icu-dev \
  libjpeg-turbo-dev \
  libpng-dev \
  libxslt-dev \
  lsof \
  curl-dev \
  libsodium-dev \
  mysql-client \
  vim \
  zip

RUN docker-php-ext-configure \
  gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/

# https://devdocs.magento.com/guides/v2.3/install-gde/system-requirements-tech.html#required-php-extensions
RUN docker-php-ext-install \
  bcmath \
  gd \
  hash \
  intl \
  opcache \
  pdo_mysql \
  simplexml \
  soap \
  xsl \
  zip

RUN curl -sS https://getcomposer.org/installer | \
  php -- --install-dir=/usr/local/bin --filename=composer

COPY conf/php.ini /usr/local/etc/php/

WORKDIR /var/www/html