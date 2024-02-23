#!/bin/bash

docker image rm -f zz-build-jpeg-recompress
docker build -t zz-build-jpeg-recompress jpeg-recompress
docker run --rm -u $(id -u):$(id -g) zz-build-jpeg-recompress --version
