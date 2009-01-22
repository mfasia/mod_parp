#!/bin/bash

. ./include.sh

cd $HTTPD
./buildconf
CFLAGS="-g -Wall" ./configure \
  --prefix=$HOME/local \
  --enable-so \
  --enable-static-support \
  --enable-ssl \
  --enable-proxy \
  --enable-parp=shared \
  --enable-parp-appl=shared
