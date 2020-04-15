# elecena.pl (c) 2015-2018

# @see https://hub.docker.com/_/python/
FROM python:2.7-slim-stretch

# install dependencies
RUN apt-get update && apt-get install -y \
        php7.0-cli \
        php7.0-curl \
        php7.0-json \
        php7.0-mbstring \
        php7.0-soap \
        php7.0-sockets \
        php7.0-xml

# add an info script
WORKDIR /opt

RUN echo "uname -a; echo -e '\n### Python'; python -V; virtualenv --version; echo -e '\n### PHP'; php -v; php -m" > info.sh
RUN chmod 744 info.sh
