python-php
==========

Python and PHP under the same roof (in **under 125 MB Docker image**).

https://github.com/elecena/python-php/pkgs/container/python-php

```
docker pull ghcr.io/elecena/python-php:3.11.2-8.2.3:v2
```

```
$ docker images | head
REPOSITORY           TAG         IMAGE ID       CREATED         SIZE
elecena/python-php   latest      ff36428b8c54   2 seconds ago   123MB
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh

### Python
Python 3.11.2
virtualenv 20.21.0 from /usr/local/lib/python3.11/site-packages/virtualenv/__init__.py

### PHP
PHP 8.2.3 (cli) (built: Feb 14 2023 20:48:45) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.2.3, Copyright (c) Zend Technologies
    with Zend OPcache v8.2.3, Copyright (c), by Zend Technologies
Composer version 2.5.4 2023-02-15 13:10:06
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
