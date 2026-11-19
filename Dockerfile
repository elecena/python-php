# elecena.pl (c) 2015-2026

# https://hub.docker.com/_/composer
FROM composer:2.11.1 AS php-composer
RUN /usr/bin/composer -v

#
# PHP
#
# https://hub.docker.com/_/php
FROM php:8.6.0-cli-alpine AS php

# check what's already installed
RUN php -v; php -m

RUN apk add \
		bzip2-dev \
		libsodium-dev \
		libxml2-dev \
		libxslt-dev \
		linux-headers \
		yaml-dev

# fixes "sockets" compilation issues
# sendrecvmsg.c:128:19: error: invalid application of 'sizeof' to incomplete type 'struct cmsgcred'
#
# see https://github.com/docker-library/php/issues/1245#issuecomment-1019957169
ENV CFLAGS="${CFLAGS:-} -D_GNU_SOURCE"

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

# install yaml extensions from pie
# https://github.com/php/pie#installing-pie
# https://packagist.org/packages/pecl/yaml
RUN apk add --virtual build-deps autoconf gcc libtool make g++ zlib-dev \
	&& curl -fL --output /tmp/pie.phar https://github.com/php/pie/releases/download/1.5.5/pie.phar \
  	&& mv /tmp/pie.phar /usr/local/bin/pie \
  	&& chmod +x /usr/local/bin/pie \
	&& pie --version \
	&& pie install pecl/yaml \
	&& apk del build-deps

RUN which php; php -v; php -m; php -i | grep ini

#
# Python
#
# https://hub.docker.com/_/python/
FROM python:3.15.2-alpine

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

# add an info script
WORKDIR /opt

RUN echo "echo -e '### Python'; python -V; virtualenv --version; echo -e '\n### PHP'; php -v; composer -V; php -m" > info.sh
RUN chmod 744 info.sh
