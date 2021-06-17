# elecena.pl (c) 2015-2021

# @see https://hub.docker.com/_/composer
FROM composer:1.10.20 AS php-composer

# @see https://hub.docker.com/_/python/
FROM python:3.9.5-alpine3.13
RUN pip install virtualenv && rm -rf /root/.cache

# copy composer from the first stage
COPY --from=php-composer /usr/bin/composer /usr/bin

# set up PHP 8.0 packages repository
# @see https://github.com/codecasts/php-alpine
ADD https://dl.bintray.com/php-alpine/key/php-alpine.rsa.pub /etc/apk/keys/php-alpine.rsa.pub
RUN echo "https://dl.bintray.com/php-alpine/v3.12/php-8.0" >> /etc/apk/repositories

ENV PHP_VERSION 8.0.1

# install dependencies
RUN apk update && apk add \
	php8 \
	php8-bz2 \
	php8-calendar \
	php8-curl \
	php8-ctype \
	php8-exif \
	php8-ftp \
	php8-gettext \
	php8-iconv \
	php8-mbstring \
	php8-opcache \
	php8-openssl \
	php8-pcntl \
	php8-pdo \
	php8-phar \
	php8-posix \
	php8-session \
	php8-shmop \
	php8-soap \
	php8-sockets \
	php8-sodium \
	php8-sysvsem \
	php8-sysvshm \
	php8-xmlreader \
	php8-xml \
	php8-xsl \
	php8-zlib \
	# see https://github.com/elecena/python-php/issues/8
	# The problem seems to be that iconv in musl is not implemented to support that conversion, when using GNU iconv it works.
	gnu-libiconv \
	&& rm -rf /tmp/* /var/log/* /var/cache/*

# use GNU iconv in php
ENV LD_PRELOAD="/usr/lib/preloadable_libiconv.so php-fpm7 php7"

# add a symlink
RUN ln -s /usr/bin/php8 /usr/bin/php

# add an info script
WORKDIR /opt

RUN echo "echo -e '### Python'; python -V; virtualenv --version; echo -e '\n### PHP'; php -v; composer -V; php -m" > info.sh
RUN chmod 744 info.sh
