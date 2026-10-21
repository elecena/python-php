python-php
==========

Python and PHP under the same roof.

https://github.com/elecena/python-php/pkgs/container/python-php

```
docker pull ghcr.io/elecena/python-php:3.15.0-8.5.12
```

```
$ docker images | head
REPOSITORY                                   TAG       IMAGE ID       CREATED        SIZE
elecena/python-php                           latest    35d9016f48e4   1 second ago   143MB
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh
### Python
Python 3.15.0
virtualenv 21.14.12 from /usr/local/lib/python3.15/site-
packages/virtualenv/__init__.py
### PHP
PHP 8.5.12 (cli) (built: Oct 21 2026 15:50:04) (NTS)
Copyright (c) The PHP Group
Built by https://github.com/docker-library/php
Zend Engine v4.5.12, Copyright (c) Zend Technologies
    with Zend OPcache v8.5.12, Copyright (c), by Zend Technologies
Composer version 2.10.3 2026-08-27 13:34:23
PHP version 8.5.12 (/usr/bin/php)
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
