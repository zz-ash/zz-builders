FROM debian:bullseye-slim
WORKDIR /jpeg-archive
RUN \
  apt-get update && apt-get install -y build-essential autoconf pkg-config nasm libtool gcc-9 git && \
  git clone --depth 1 --branch v2.2.0 https://github.com/danielgtaylor/jpeg-archive.git && \
  git clone --depth 1 --branch v3.3.1 https://github.com/mozilla/mozjpeg.git && \
  cd mozjpeg && autoreconf -fiv && ./configure --with-jpeg8 && make CC=gcc-9 && make install
  