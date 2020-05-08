python-php
==========

Python and PHP under the same roof (in **160 MB Docker image**).

https://hub.docker.com/r/elecena/python-php

```
docker pull elecena/python-php
```

```
$ docker images | head
REPOSITORY                                          TAG                          IMAGE ID            CREATED              SIZE
elecena/python-php                                  latest                       5f03eb6d7605        About a minute ago   160MB
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh

### Python
Python 3.8.2
virtualenv 20.0.20 from /usr/local/lib/python3.8/site-packages/virtualenv/__init__.py

### PHP
PHP 7.4.3 (cli) (built: Mar 20 2020 07:14:36) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.3, Copyright (c), by Zend Technologies
Composer version 1.10.5 2020-04-10 11:44:22
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
