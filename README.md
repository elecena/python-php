python-php
==========

Python and PHP under the same roof (in **around 100 MB Docker image**).

https://github.com/elecena/python-php/pkgs/container/python-php

```
docker pull ghcr.io/elecena/python-php:3.9.7-8.0.10
```

```
$ docker images | head
REPOSITORY           TAG         IMAGE ID       CREATED         SIZE
elecena/python-php   latest      2108c555e6bc   2 seconds ago   102MB
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh

### Python
Python 3.9.7
virtualenv 20.7.2 from /usr/local/lib/python3.9/site-packages/virtualenv/__init__.py

### PHP
PHP 8.0.10 (cli) (built: Aug 27 2021 21:31:44) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.10, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.10, Copyright (c), by Zend Technologies
Composer version 2.1.6 2021-08-19 17:11:08
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
