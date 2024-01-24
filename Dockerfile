FROM ghcr.io/asc8277/jpeg-recompress-builder:2.2.0
WORKDIR /jpeg-archive
RUN cd jpeg-archive && make CC=gcc-9

FROM busybox:glibc
WORKDIR /
COPY --from=ghcr.io/asc8277/jpeg-recompress-builder /jpeg-archive/jpeg-archive/jpeg-recompress jpeg-recompress
CMD ["/jpeg-recompress", "--version"]