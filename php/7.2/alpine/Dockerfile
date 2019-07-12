FROM php:7.2-fpm-alpine

LABEL maintainer="damien@graycore.io"

RUN apk add --no-cache \
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
  procps \
  zip

# https://devdocs.magento.com/guides/v2.3/install-gde/system-requirements-tech.html#required-php-extensions
# This layer must be run as one, not two - See: https://github.com/docker-library/php/issues/855
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install \
  bcmath \
  gd \
  intl \
  opcache \
  pdo_mysql \
  soap \
  xsl \
  zip

RUN curl -sS https://getcomposer.org/installer | \
  php -- --install-dir=/usr/local/bin --filename=composer

COPY conf/php.ini /usr/local/etc/php/

WORKDIR /var/www/html