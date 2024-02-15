#!/bin/bash

docker pull ghcr.io/asc8277/zz-build-jpeg-recompress
docker run --rm -u $(id -u):$(id -g) ghcr.io/asc8277/zz-build-jpeg-recompress --version
