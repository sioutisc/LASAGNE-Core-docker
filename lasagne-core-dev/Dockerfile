#
# Dockerfile for development focused container of LASAGNE core
#

# Extend lasagne-core container

FROM lasagne-core

# These arguments must be passed-in when building container.
# Equivalent environment variables must be passed-in when running the container

ARG DEV_UID
ARG DEV_GID
ARG DEV_USK
ARG DEV_CMD

# Sets the required paths for LASAGNE

ENV DEV_ROOT=/opt/DEV \
    LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DEV_ROOT/lib

# Creates a user based on the arguments passed into the container
# Otherwise, build artefacts are owned by 'root'

RUN groupadd -g $DEV_GID dev
RUN useradd -u $DEV_UID -g $DEV_GID -m -d /home/dev dev
RUN echo umask $DEV_USK >> /etc/bash.bashrc

WORKDIR $DEV_ROOT

# Immediately switch to the DEV_USER upon running the container

CMD if [ -z "${DEV_CMD}" ]; then su dev; else su dev "-c $DEV_CMD"; fi
