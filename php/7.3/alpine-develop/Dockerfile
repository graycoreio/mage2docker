FROM graycore/magento-php:7.3-fpm-alpine

LABEL maintainer="damien@graycore.io"

# Blackfire
ENV current_os=alpine
RUN version=$(php -r "echo PHP_MAJOR_VERSION.PHP_MINOR_VERSION;") \
    && curl -A "Docker" -o /tmp/blackfire-probe.tar.gz -D - -L -s https://blackfire.io/api/v1/releases/probe/php/$current_os/amd64/$version \
    && mkdir -p /tmp/blackfire \
    && tar zxpf /tmp/blackfire-probe.tar.gz -C /tmp/blackfire \
    && mv /tmp/blackfire/blackfire-*.so $(php -r "echo ini_get('extension_dir');")/blackfire.so \
    && printf "extension=blackfire.so\nblackfire.agent_socket=tcp://blackfire:8707\n" > $PHP_INI_DIR/conf.d/blackfire.ini \
    && rm -rf /tmp/blackfire /tmp/blackfire-probe.tar.gz

RUN apk add --no-cache \
  patch

RUN docker-php-ext-install xdebug

COPY conf/php.ini /usr/local/etc/php/

ENV MAGENTO_USER=app
ENV MAGENTO_USER_UID=1000
ENV MAGENTO_USER_GID=1000

RUN addgroup --gid "$MAGENTO_USER_GID" "$MAGENTO_USER" && adduser \
    --disabled-password \
    --gecos "" \
    --no-create-home \
    --ingroup "$MAGENTO_USER" \
    --uid "$MAGENTO_USER_UID" \
    -h /var/www \
    -s /bin/bash "$MAGENTO_USER"

RUN mkdir -p /var/www/html

RUN chown app:app /var/www/html

USER app:app

VOLUME /var/www/html

WORKDIR /var/www/html