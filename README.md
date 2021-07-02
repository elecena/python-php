python-php
==========

Python and PHP under the same roof (in **around 100 MB Docker image**).

https://hub.docker.com/r/elecena/python-php

```
docker pull elecena/python-php
```

or

```
docker pull ghcr.io/elecena/python-php:latest
```

```
$ docker images | head
REPOSITORY           TAG         IMAGE ID       CREATED         SIZE
elecena/python-php   latest      0a1466db6d26   2 seconds ago   104MB
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh

### Python
Python 3.9.5
virtualenv 20.4.7 from /usr/local/lib/python3.9/site-packages/virtualenv/__init__.py

### PHP
PHP 8.0.7 (cli) (built: Jun  4 2021 19:02:30) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.7, Copyright (c) Zend Technologies
Composer version 2.1.3 2021-06-09 16:31:20
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
zlib

[Zend Modules]
```
