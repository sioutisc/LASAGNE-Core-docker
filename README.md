# LASAGNE-Core
Layered Approach to Service Architectures for a Global Network Environment (LASAGNE)

## About LASAGNE

see https://github.com/LASAGNE-Open-Systems/LASAGNE-Core

## Docker container

This Dockerfile in this repository builds v1.4.3 of LASAGNE Core 

# Installing docker

See instructions here: https://docs.docker.com/engine/installation/

# Execute the pre-built container

The following command will download and execute the pre-built container from dockerhub

```
> docker run --rm sioutisc/lasagne-core
```

# Build your own container

```
> docker build myuserid/lasagne-core
```

## Running your own container

Run the following command 

```
> docker run --rm myuserid/lasagne-core
```

# Inspecting the container

Instead of running the TextParser example, you can 'enter' the container and inspect the source code

Run the following command

```
> docker run --rm --it --entrypoint=/bin/bash sioutisc/lasagne-core
```
# License

This Dockerfile and associated files are licensed under the terms of the LGPL-3.0 license.
See the LICENSE file for details.
