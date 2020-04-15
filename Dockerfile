# elecena.pl (c) 2015-2020

# @see https://hub.docker.com/_/python/
FROM python:3.8-slim-buster
RUN pip install virtualenv && rm -rf /root/.cache

# install dependencies
RUN apt-get update && apt-get install -y \
        php7.3-cli \
        php7.3-curl \
        php7.3-json \
        php7.3-mbstring \
        php7.3-soap \
        php7.3-sockets \
        php7.3-xml && \
        rm -rf /tmp /var/log/* /var/cache/* /var/lib/apt/lists/*

ENV PHP_VERSION 7.3.14

# add an info script
WORKDIR /opt

RUN echo "uname -a; echo -e '\n### Python'; python -V; virtualenv --version; echo -e '\n### PHP'; php -v; php -m" > info.sh
RUN chmod 744 info.sh
