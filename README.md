# LASAGNE-Core

Layered Approach to Service Architectures for a Global Network Environment (LASAGNE)

## About LASAGNE

see https://github.com/LASAGNE-Open-Systems/LASAGNE-Core

## Docker container

This Dockerfile in this repository builds v1.4.3 of LASAGNE Core 

# Installing docker

See instructions here: https://docs.docker.com/engine/installation/

# Build your own container

```
> docker build -t lasagne-core .
```

## Running your own container

Run the following command 

```
> docker run -it --rm lasagne-core
```

# Inspecting the container

Instead of running the TextParser example, you can 'enter' the container and inspect the source code

Run the following command

```
> docker run -it --rm --entrypoint=/bin/bash lasagne-core
```

# License

This Dockerfile and associated files are licensed under the terms of the GPL-3.0 license.
See the LICENSE file for details.
