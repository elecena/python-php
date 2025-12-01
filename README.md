python-php
==========

Python and PHP under the same roof (in **under 125 MB Docker image**).

https://github.com/elecena/python-php/pkgs/container/python-php

```
docker pull ghcr.io/elecena/python-php:3.14.0-8.5.0
```

```
$ docker images | head
REPOSITORY           TAG       IMAGE ID       CREATED        SIZE
elecena/python-php   latest    68072de0a9cd   1 second ago   124MB
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh
### Python
Python 3.14.0
virtualenv 20.35.3 from /usr/local/lib/python3.14/site-packages/virtualenv/__init__.py
### PHP
PHP 8.5.0 (cli) (built: Nov 20 2025 19:49:31) (NTS)
Copyright (c) The PHP Group
Built by https://github.com/docker-library/php
Zend Engine v4.5.0, Copyright (c) Zend Technologies
    with Zend OPcache v8.5.0, Copyright (c), by Zend Technologies
Composer version 2.9.2 2025-11-19 21:57:25
PHP version 8.5.0 (/usr/bin/php)
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
