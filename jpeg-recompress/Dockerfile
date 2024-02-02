FROM debian:bullseye-slim AS builder
WORKDIR /build
RUN apt-get update && apt-get install -y build-essential autoconf pkg-config nasm libtool gcc-9 git
RUN git clone --depth 1 --branch v2.2.0 https://github.com/danielgtaylor/jpeg-archive.git
RUN git clone --depth 1 --branch v3.3.1 https://github.com/mozilla/mozjpeg.git
RUN cd mozjpeg && autoreconf -fiv && ./configure --with-jpeg8 && make CC=gcc-9 && make install && cd ..
RUN cd jpeg-archive && make CC=gcc-9

FROM busybox:glibc
WORKDIR /
COPY --from=builder /build/jpeg-archive/jpeg-recompress jpeg-recompress
CMD ["/jpeg-recompress", "--version"]