# elecena.pl (c) 2015-2023

# https://hub.docker.com/_/php
ARG PHP_VERSION=8.2.3

# https://hub.docker.com/_/python/
ARG PYTHON_VERSION=3.10.8

# https://hub.docker.com/_/composer
ARG COMPOSER_VERSION=2.5.4

FROM composer:$COMPOSER_VERSION AS php-composer
RUN /usr/bin/composer -v

#
# PHP
#
FROM php:$PHP_VERSION-cli-alpine AS php
RUN apk add \
		bzip2-dev \
		libsodium-dev \
		libxml2-dev \
		libxslt-dev

# fixes "sockets" compilation issues
# sendrecvmsg.c:128:19: error: invalid application of 'sizeof' to incomplete type 'struct cmsgcred'
#
# see https://github.com/docker-library/php/issues/1245#issuecomment-1019957169
ENV CFLAGS="$CFLAGS -D_GNU_SOURCE"

RUN docker-php-ext-install \
	bz2 \
	calendar \
	exif \
	opcache \
	pcntl \
	shmop \
	soap \
	sockets \
	sodium \
	sysvsem \
	sysvshm \
	xsl

RUN which php; php -v; php -m; php -i | grep ini

#
# Python
#
FROM python:$PYTHON_VERSION-alpine
ARG PHP_VERSION
ARG COMPOSER_VERSION

RUN pip install virtualenv && rm -rf /root/.cache
RUN python -V

# copy composer from the first stage
COPY --from=php-composer /usr/bin/composer /usr/bin

# copy PHP binary and required libs
COPY --from=php /usr/local/bin/php /usr/bin
COPY --from=php /usr/local/etc/php /usr/local/etc/php
COPY --from=php /usr/lib/*.so.* /usr/lib/
COPY --from=php /usr/local/lib/php /usr/local/lib/php

# see https://github.com/elecena/python-php/issues/8
# The problem seems to be that iconv in musl is not implemented to support that conversion, when using GNU iconv it works.
RUN apk add gnu-libiconv
# use GNU iconv in php
ENV LD_PRELOAD="/usr/lib/preloadable_libiconv.so php-fpm php"
# and test it...
RUN php -r '$res = iconv("utf-8", "utf-8//IGNORE", "fooą");'

RUN php -v; php -m; php -i | grep ini
ENV PHP_VERSION $PHP_VERSION
ENV COMPOSER_VERSION $COMPOSER_VERSION

# add an info script
WORKDIR /opt

RUN echo "echo -e '### Python'; python -V; virtualenv --version; echo -e '\n### PHP'; php -v; composer -V; php -m" > info.sh
RUN chmod 744 info.sh
