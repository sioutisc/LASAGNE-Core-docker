# Project: lasagne-core

The Dockerfile in this repository builds v1.5.0 of LASAGNE Core 

# Build your own container

```
> docker build -t lasagne-core .
```

## Running your container

Run the following command to enter the container and look around

```
> docker run -it --rm lasagne-core
```

# Running the TextParser example

Run the following command in the container to execute the text parser example

```
> $DAF_ROOT/bin/TextParser.sh
```

