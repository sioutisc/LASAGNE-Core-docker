#
# Dockerfile for binary only container of LASAGNE core
#

# Extend lasagne-core container

FROM lasagne-core

# These arguments must be passed-in when building container.
# Equivalent environment variables must be passed-in when running the container

ARG DEV_USR
ARG DEV_UID
ARG DEV_GID

# Sets the required paths for LASAGNE

ENV DEV_ROOT=/opt/DEV \
    LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DEV_ROOT/lib

# Creates a user based on the arguments passed into the container
# Otherwise, build artefacts are owned by 'root'

RUN groupadd -g $DEV_GID $DEV_USR 
RUN useradd -u $DEV_UID -g $DEV_GID $DEV_USR
RUN echo 'umask 022' >> /etc/bash.bashrc

WORKDIR $DEV_ROOT

# Immediately switch to the DEV_USER upon running the container

CMD su $DEV_USR
