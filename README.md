python-php
==========

Python and PHP under the same roof.

https://github.com/elecena/python-php/pkgs/container/python-php

```
docker pull ghcr.io/elecena/python-php:3.14.6-8.5.7
```

```
$ docker images | head
REPOSITORY                                   TAG       IMAGE ID       CREATED        SIZE
elecena/python-php                           latest    b62e5cc7e948   1 second ago   125MB
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh
### Python
Python 3.14.6
virtualenv 21.5.1 from /usr/local/lib/python3.14/site-packages/virtualenv/__init__.py

### PHP
PHP 8.5.7 (cli) (built: Jun 16 2026 00:17:14) (NTS)
Copyright (c) The PHP Group
Built by https://github.com/docker-library/php
Zend Engine v4.5.7, Copyright (c) Zend Technologies
    with Zend OPcache v8.5.7, Copyright (c), by Zend Technologies
Composer version 2.10.1 2026-06-04 10:25:59
PHP version 8.5.7 (/usr/bin/php)
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
lexbor
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
uri
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
