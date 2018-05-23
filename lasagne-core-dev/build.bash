#!/bin/bash
docker build \
  --build-arg DEV_USR=$USERNAME \
  --build-arg DEV_UID=$(id -u) \
  --build-arg DEV_GID=$(id -g) \
  -t lasagne-core-dev \
  .
