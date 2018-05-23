# Project: lasagne-core-dev

The Dockerfile in this repository creates container designed to build an external project

The location of the external project is mounted as an argument and bound to /opt/DEV

A new user is also created in the container to match the host user name, uid and gid

## Prerequisite

Clone and build the lasagne-core container on your system.

See the __lasagne-core__ directory in this repository

## Create your own container

```
> docker build \
  --build-arg DEV_USR=$USERNAME \
  --build-arg DEV_UID=$(id -u) \
  --build-arg DEV_GID=$(id -g) \
  -t lasagne-core-dev \
  .
```

## Running your container

__IMPORTANT__: Set an environment variable DEV_ROOT to point to the location of the external project

Run the following command 

```
> docker run \
  -e DEV_USR=$USERNAME \
  -e DEV_UID=$(id -u) \
  -e DEV_GID=$(id -g) \
  -v $DEV_ROOT:/opt/DEV \
  --rm -it lasagne-core-dev
```

