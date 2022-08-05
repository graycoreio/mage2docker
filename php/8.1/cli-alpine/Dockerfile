FROM php:8.1-cli-alpine

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
  libzip-dev \
  libsodium-dev \
  mysql-client \
  procps 

# https://devdocs.magento.com/guides/v2.3/install-gde/system-requirements-tech.html#required-php-extensions
# This layer must be run as one, not two - See: https://github.com/docker-library/php/issues/855
RUN docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ \
  && docker-php-ext-install \
  bcmath \
  gd \
  intl \
  opcache \
  pdo_mysql \
  soap \
  xsl \
  zip \
  sockets

RUN curl -sS https://getcomposer.org/installer | \
  php -- --install-dir=/usr/local/bin --filename=composer && \
  composer self-update

COPY conf/php.ini /usr/local/etc/php/

RUN chmod 775 /var/www/html && chown root:root /var/www/html

WORKDIR /var/www/html