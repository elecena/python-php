python-php
==========

Python and PHP under the same roof.

https://github.com/elecena/python-php/pkgs/container/python-php

```
docker pull ghcr.io/elecena/python-php:3.14.6-8.5.8
```

```
$ docker images | head
REPOSITORY                                   TAG       IMAGE ID       CREATED        SIZE
elecena/python-php                           latest    53c7962d415c   1 second ago   127MB
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh
### Python
Python 3.14.6
virtualenv 21.6.1 from /usr/local/lib/python3.14/site-
packages/virtualenv/__init__.py

### PHP
PHP 8.5.8 (cli) (built: Jul  6 2026 16:50:20) (NTS)
Copyright (c) The PHP Group
Built by https://github.com/docker-library/php
Zend Engine v4.5.8, Copyright (c) Zend Technologies
    with Zend OPcache v8.5.8, Copyright (c), by Zend Technologies
Composer version 2.10.2 2026-07-01 11:24:45
PHP version 8.5.8 (/usr/bin/php)
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
