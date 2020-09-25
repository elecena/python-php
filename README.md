python-php
==========

Python and PHP under the same roof (in **under 100 MB Docker image**).

https://hub.docker.com/r/elecena/python-php

```
docker pull elecena/python-php
```

```
$ docker images | head
REPOSITORY                                          TAG                          IMAGE ID            CREATED        SIZE
elecena/python-php                                  latest                       8a6373969bad        1 second ago   92.8MB
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh

### Python
Python 3.8.6
virtualenv 20.0.31 from /usr/local/lib/python3.8/site-packages/virtualenv/__init__.py

### PHP
PHP 7.4.9 (cli) (built: Aug 31 2020 19:20:23) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.9, Copyright (c), by Zend Technologies
Composer version 1.10.13 2020-09-09 11:46:34
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
gettext
hash
iconv
json
libxml
mbstring
openssl
pcntl
pcre
PDO
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
standard
sysvmsg
sysvsem
sysvshm
tokenizer
xml
xmlreader
xmlwriter
xsl
Zend OPcache
zlib

[Zend Modules]
Zend OPcache
```
