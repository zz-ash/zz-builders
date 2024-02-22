#!/bin/bash

docker pull ghcr.io/smitherander/zz-build-jpeg-recompress
docker run --rm -u $(id -u):$(id -g) ghcr.io/smitherander/zz-build-jpeg-recompress --version
