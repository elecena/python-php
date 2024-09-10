python-php
==========

Python and PHP under the same roof (in **under 125 MB Docker image**).

https://github.com/elecena/python-php/pkgs/container/python-php

```
docker pull ghcr.io/elecena/python-php:3.12.6-8.3.11
```

```
$ docker images | head
REPOSITORY           TAG         IMAGE ID       CREATED         SIZE
elecena/python-php   latest      cc8673ddac56   1 second ago    122MB
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh

### Python
Python 3.12.6
virtualenv 20.26.4 from /usr/local/lib/python3.12/site-packages/virtualenv/__init__.py

### PHP
PHP 8.3.11 (cli) (built: Sep  7 2024 01:00:59) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.3.11, Copyright (c) Zend Technologies
    with Zend OPcache v8.3.11, Copyright (c), by Zend Technologies
Composer version 2.7.9 2024-09-04 14:43:28
PHP version 8.3.11 (/usr/bin/php)
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
