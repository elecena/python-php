# elecena.pl (c) 2015-2021

# @see https://hub.docker.com/_/composer
FROM composer:2.1.3 AS php-composer
RUN /usr/bin/composer -v

# @see https://hub.docker.com/_/php
FROM php:8.0.7-cli-alpine AS php
RUN apk add \
		bzip2-dev \
		libsodium-dev \
		libxml2-dev \
		libxslt-dev

RUN docker-php-ext-install \
	bz2 \
	calendar \
	exif \
	pcntl \
	shmop \
	soap \
	sockets \
	sodium \
	sysvsem \
	sysvshm \
	xsl

RUN which php; php -v; php -m; php -i | grep ini

# @see https://hub.docker.com/_/python/
FROM python:3.9.5-alpine
RUN pip install virtualenv && rm -rf /root/.cache
RUN python -V

# copy composer from the first stage
COPY --from=php-composer /usr/bin/composer /usr/bin

# copy PHP binary and required libs
COPY --from=php /usr/local/bin/php /usr/bin
COPY --from=php /usr/local/etc/php /usr/local/etc/php
COPY --from=php /usr/lib/*.so.* /usr/lib
COPY --from=php /usr/local/lib/php /usr/local/lib/php

RUN php -v; php -m; php -i | grep ini
ENV PHP_VERSION 8.0.7

# add an info script
WORKDIR /opt

RUN echo "echo -e '### Python'; python -V; virtualenv --version; echo -e '\n### PHP'; php -v; composer -V; php -m" > info.sh
RUN chmod 744 info.sh
