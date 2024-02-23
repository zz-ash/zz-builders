FROM debian:bullseye-slim AS builder
WORKDIR /build
COPY . .
RUN ./build.sh

FROM busybox:glibc
WORKDIR /
COPY --from=builder /build/jpeg-archive-2.2.0/jpeg-recompress jpeg-recompress
ENTRYPOINT ["/jpeg-recompress"]