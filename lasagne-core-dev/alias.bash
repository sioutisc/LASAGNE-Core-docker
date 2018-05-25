#!/bin/bash
Lshell() {
  docker run -v $(pwd):/opt/DEV --rm -it lasagne-core-dev
}

Lmwc() {
  CMD="\$ACE_ROOT/bin/mwc.pl $@"
  docker run -e "DEV_CMD=$CMD" -v $(pwd):/opt/DEV --rm -it lasagne-core-dev
}

Lmake() {
  CMD="make $@"
  docker run -e "DEV_CMD=$CMD" -v $(pwd):/opt/DEV --rm -it lasagne-core-dev
}

LTAFServer() {
  CMD="\$DAF_ROOT/bin/TAFServer $@"
  docker run -e "DEV_CMD=$CMD" -v $(pwd):/opt/DEV --rm -it lasagne-core-dev
}

Lmdu() {
  CMD="MulticastDiscoveryUtility"
  docker run -e "DEV_CMD=$CMD" -v $(pwd):/opt/DEV --rm -it lasagne-core-dev
}
