#!/bin/bash

docker image rm -f zz-build-jpeg-recompress
docker build -t zz-build-jpeg-recompress .