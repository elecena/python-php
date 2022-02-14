python-php
==========

Python and PHP under the same roof (in **around 100 MB Docker image**).

https://github.com/elecena/python-php/pkgs/container/python-php

```
docker pull ghcr.io/elecena/python-php:3.10.1-8.1.0
```

```
$ docker images | head
REPOSITORY                   TAG            IMAGE ID       CREATED          SIZE
elecena/python-php           3.10.2-8.1.2   5980c93b189e   35 seconds ago   111MB
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh

### Python
Python 3.10.2
virtualenv 20.13.1 from /usr/local/lib/python3.10/site-packages/virtualenv/__init__.py

### PHP
PHP 8.1.2 (cli) (built: Jan 21 2022 21:38:22) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.1.2, Copyright (c) Zend Technologies
    with Zend OPcache v8.1.2, Copyright (c), by Zend Technologies
Composer version 2.2.6 2022-02-04 17:00:38
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
ftp
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
Zend OPcache
zlib

[Zend Modules]
Zend OPcache
```
