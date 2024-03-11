python-php
==========

Python and PHP under the same roof (in **under 125 MB Docker image**).

https://github.com/elecena/python-php/pkgs/container/python-php

```
docker pull ghcr.io/elecena/python-php:3.12.2-8.2.16
```

```
$ docker images | head
REPOSITORY           TAG         IMAGE ID       CREATED        SIZE
elecena/python-php   latest      f36a573282ee   1 second ago   122MB
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh

### Python
Python 3.12.2
virtualenv 20.25.1 from /usr/local/lib/python3.12/site-packages/virtualenv/__init__.py
### PHP
PHP 8.2.16 (cli) (built: Feb 16 2024 22:19:12) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.2.16, Copyright (c) Zend Technologies
    with Zend OPcache v8.2.16, Copyright (c), by Zend Technologies
Composer version 2.7.1 2024-02-09 15:26:28
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
