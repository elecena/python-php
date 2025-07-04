python-php
==========

Python and PHP under the same roof (in **under 125 MB Docker image**).

https://github.com/elecena/python-php/pkgs/container/python-php

```
docker pull ghcr.io/elecena/python-php:3.13.5-8.4.10
```

```
$ docker images | head
REPOSITORY           TAG       IMAGE ID       CREATED        SIZE
elecena/python-php   latest    987175347e2d   1 second ago   122MB
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh

### Python
Python 3.13.5
virtualenv 20.31.2 from /usr/local/lib/python3.13/site-packages/virtualenv/__init__.py

### PHP
PHP 8.4.10 (cli) (built: Jul  3 2025 23:01:37) (NTS)
Copyright (c) The PHP Group
Built by https://github.com/docker-library/php
Zend Engine v4.4.10, Copyright (c) Zend Technologies
    with Zend OPcache v8.4.10, Copyright (c), by Zend Technologies
Composer version 2.8.9 2025-05-13 14:01:37
PHP version 8.4.10 (/usr/bin/php)
Run the "diagnose" command to get more detailed diagnostics output.
[PHP Modules]
bz2
calendar
Core
ctype
curl
date
dom
exif
fileinfo
filter
hash
iconv
json
libxml
mbstring
mysqlnd
openssl
pcntl
pcre
PDO
pdo_sqlite
Phar
posix
random
readline
Reflection
session
shmop
SimpleXML
soap
sockets
sodium
SPL
sqlite3
standard
sysvsem
sysvshm
tokenizer
xml
xmlreader
xmlwriter
xsl
yaml
Zend OPcache
zlib

[Zend Modules]
Zend OPcache
```
