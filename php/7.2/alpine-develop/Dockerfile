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

# Blackfire
ENV current_os=alpine
RUN version=$(php -r "echo PHP_MAJOR_VERSION.PHP_MINOR_VERSION;") \
    && curl -A "Docker" -o /tmp/blackfire-probe.tar.gz -D - -L -s https://blackfire.io/api/v1/releases/probe/php/$current_os/amd64/$version \
    && mkdir -p /tmp/blackfire \
    && tar zxpf /tmp/blackfire-probe.tar.gz -C /tmp/blackfire \
    && mv /tmp/blackfire/blackfire-*.so $(php -r "echo ini_get('extension_dir');")/blackfire.so \
    && printf "extension=blackfire.so\nblackfire.agent_socket=tcp://blackfire:8707\n" > $PHP_INI_DIR/conf.d/blackfire.ini \
    && rm -rf /tmp/blackfire /tmp/blackfire-probe.tar.gz


COPY conf/php.ini /usr/local/etc/php/

WORKDIR /var/www/html