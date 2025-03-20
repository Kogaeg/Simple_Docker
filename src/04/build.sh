#!/bin/bash

gcc hello_serv.c -o hello_serv -lfcgi
service nginx start
nginx -s reload
spawn-fcgi -p 8080 -n hello_serv