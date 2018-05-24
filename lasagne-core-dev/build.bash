#!/bin/bash
docker build \
  --build-arg DEV_UID=$(id -u) \
  --build-arg DEV_GID=$(id -g) \
  --build-arg DEV_USK=$(umask) \
  -t lasagne-core-dev .
