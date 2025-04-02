python-php
==========

Python and PHP under the same roof (in **under 125 MB Docker image**).

https://github.com/elecena/python-php/pkgs/container/python-php

```
docker pull ghcr.io/elecena/python-php:3.13.2-8.4.5
```

```
$ docker images | head
REPOSITORY           TAG       IMAGE ID       CREATED        SIZE
elecena/python-php   latest    2493a5d6b254   1 second ago   117MB
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh

 ### Python
Python 3.13.2
virtualenv 20.30.0 from /usr/local/lib/python3.13/site-packages/virtualenv/__init__.py

### PHP
PHP 8.4.5 (cli) (built: Mar 14 2025 00:11:50) (NTS)
Copyright (c) The PHP Group
Built by https://github.com/docker-library/php
Zend Engine v4.4.5, Copyright (c) Zend Technologies
    with Zend OPcache v8.4.5, Copyright (c), by Zend Technologies
Composer version 2.8.6 2025-02-25 13:03:50
PHP version 8.4.5 (/usr/bin/php)
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
