python-php
==========

Python and PHP under the same roof (in **under 50 MB Docker image**).

https://github.com/elecena/python-php/pkgs/container/python-php

```
docker pull ghcr.io/elecena/python-php:3.14.3-8.5.3
```

```
$ docker images | head
IMAGE                                               ID             DISK USAGE   CONTENT SIZE   EXTRA
elecena/python-php:latest                           6953c988e748        185MB         48.2MB        
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh
### Python
Python 3.14.3
virtualenv 20.37.0 from /usr/local/lib/python3.14/site-packages/virtualenv/__init__.py

### PHP
PHP 8.5.3 (cli) (built: Feb 13 2026 18:34:10) (NTS)
Copyright (c) The PHP Group
Built by https://github.com/docker-library/php
Zend Engine v4.5.3, Copyright (c) Zend Technologies
    with Zend OPcache v8.5.3, Copyright (c), by Zend Technologies
Composer version 2.9.5 2026-01-29 11:40:53
PHP version 8.5.3 (/usr/bin/php)
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
