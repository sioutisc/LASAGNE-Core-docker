# Project: lasagne-core-dev

The Dockerfile in this repository creates a container designed to build an external LASAGNE project

The location of the external project is mounted to /opt/DEV

A new user is also created in the container to match the relevant host developer uid, gid and default umask

## Prerequisite

Clone and build the lasagne-core container on your system.

See the __lasagne-core__ directory in this repository

## Create your own container

```
> docker build \
  --build-arg DEV_UID=$(id -u) \
  --build-arg DEV_GID=$(id -g) \
  -t lasagne-core-dev .
```

## Running your container

Run the following command in the directory of your LASAGNE project

```
> docker run -v $(pwd):/opt/DEV --rm -it lasagne-core-dev
```

## Running specific applications

The DEV_CMD argument can be used to instruct the container to execute a specific appication instead of a shell

The __alias.bash__ script specifies a small number of bash functions using this method

For example, the __Lmwc__ function is equivalent to running $ACE_ROOT/bin/mwc.pl inside the container

You can make use of these functions by sourcing __alias.bash__ into your environment

```
> source alias.bash
```
