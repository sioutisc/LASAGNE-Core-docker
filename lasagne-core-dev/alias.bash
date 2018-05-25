#!/bin/bash
Lshell() {
  docker run -v $(pwd):/opt/DEV --rm -it lasagne-core-dev
}

Lmwc() {
  CMD="-c \$ACE_ROOT/bin/mwc.pl $@"
  docker run -e "DEV_CMD=$CMD" -v $(pwd):/opt/DEV --rm -it lasagne-core-dev
}

Lmake() {
  CMD="-c make $@"
  docker run -e "DEV_CMD=$CMD" -v $(pwd):/opt/DEV --rm -it lasagne-core-dev
}

LTAFServer() {
  CMD="-c \$DAF_ROOT/bin/TAFServer $@"
  docker run -e "DEV_CMD=$CMD" -v $(pwd):/opt/DEV --rm -it lasagne-core-dev
}

Lmdu() {
  CMD="-c MulticastDiscoveryUtility"
  docker run -e "DEV_CMD=$CMD" -v $(pwd):/opt/DEV --rm -it lasagne-core-dev
}
