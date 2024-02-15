#!/bin/bash

docker build -t jpeg-recompress .
docker run --rm -u $(id -u):$(id -g) jpeg-recompress --version
