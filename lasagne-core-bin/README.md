# LASAGNE-Core

Layered Approach to Service Architectures for a Global Network Environment (LASAGNE)

## About LASAGNE

see https://github.com/LASAGNE-Open-Systems/LASAGNE-Core

## Docker container

The Dockerfile in this repository creates a binary only container of LASAGNE.

# Prerequisite

Clone and build the lasagne-core container on your system.
See https://github.com/sioutisc/docker-lasagne-core

# Create your own container

```
> docker build -t lasagne-core-bin .
```

## Running your container

Run the following command 

```
> docker run --rm lasagne-core-bin
```

# License

This Dockerfile and associated files are licensed under the terms of the GPL-3.0 license.
See the LICENSE file for details.
