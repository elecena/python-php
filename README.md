python-php
==========

Python and PHP under the same roof (in **around 100 MB Docker image**).

https://hub.docker.com/r/elecena/python-php

```
docker pull elecena/python-php
```

```
$ docker images | head
REPOSITORY                                           TAG                 IMAGE ID            CREATED             SIZE
elecena/python-php                                   latest              a573fc57ed6a        1 second ago        104MB
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh

### Python
Python 3.9.0
virtualenv 20.4.2 from /usr/local/lib/python3.9/site-packages/virtualenv/__init__.py

### PHP
PHP 8.0.1 (cli) (built: Jan 10 2021 13:43:09) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.1, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.1, Copyright (c), by Zend Technologies
Composer version 1.10.20 2021-01-27 15:41:06
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
