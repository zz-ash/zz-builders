#!/bin/sh

apt-get update
apt-get install -y build-essential autoconf pkg-config nasm libtool gcc-9 unzip
unzip jpeg-archive-2.2.0.zip
unzip mozjpeg-3.3.1
cd mozjpeg-3.3.1
autoreconf -fiv
./configure --with-jpeg8
make CC=gcc-9
make install
cd ../jpeg-archive-2.2.0
make CC=gcc-9
