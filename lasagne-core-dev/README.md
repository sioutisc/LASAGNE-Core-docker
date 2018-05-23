# Project: lasagne-core-dev

The Dockerfile in this repository creates a container designed to build an external LASAGNE project

The location of the external project is passed as an argument and mounted to /opt/DEV

A new user is also created in the container to match the relevant host user name, uid and gid

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

__IMPORTANT__: For the below command to work correctly you need to have set an environment variable DEV_ROOT to point to the location of the external project. Alternatively, replace '$DEV_ROOT' in the command below with the full path of your project location.

Run the following command 

```
> docker run \
  -e DEV_USR=$USERNAME \
  -e DEV_UID=$(id -u) \
  -e DEV_GID=$(id -g) \
  -v $DEV_ROOT:/opt/DEV \
  --rm -it lasagne-core-dev
```


