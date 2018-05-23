#!/bin/bash
docker run \
  -e DEV_USR=$USERNAME \
  -e DEV_UID=$(id -u) \
  -e DEV_GID=$(id -g) \
  -v $DEV_ROOT:/opt/DEV \
  --rm -it lasagne-core-dev
