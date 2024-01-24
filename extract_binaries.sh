#!/bin/bash

container_id=$(docker create --platform linux/arm64 ghcr.io/asc8277/jpeg-recompress-bin:2.2.0)
docker cp "$container_id:/jpeg-recompress" "jpeg-recompress"
docker rm "$container_id"