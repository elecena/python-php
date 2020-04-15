python-php
==========

Python and PHP under the same roof (in **under 150 MB Docker image**).

https://hub.docker.com/r/elecena/python-php

```
docker pull elecena/python-php
```

```
REPOSITORY                                      TAG                        IMAGE ID            CREATED             SIZE
elecena/python-php                              3.8-7.3-alpine             c9cc8676df95        36 minutes ago      139MB
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh

### Python
Python 3.8.2
virtualenv 20.0.17 from /usr/local/lib/python3.8/site-packages/virtualenv/__init__.py

### PHP
PHP 7.3.16 (cli) (built: Mar 20 2020 11:26:40) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.16, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.3.16, Copyright (c) 1999-2018, by Zend Technologies
[PHP Modules]
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
wddx
xml
xmlreader
xmlwriter
xsl
Zend OPcache
zlib

[Zend Modules]
Zend OPcache
```
