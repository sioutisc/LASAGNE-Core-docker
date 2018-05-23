FROM lasagne-core

ARG DEV_USR
ARG DEV_UID
ARG DEV_GID

ENV DEV_ROOT=/opt/DEV \
    LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DEV_ROOT/lib

RUN groupadd -g $DEV_GID $DEV_USR 
RUN useradd -u $DEV_UID -g $DEV_GID $DEV_USR
RUN echo 'umask 022' >> /etc/bash.bashrc

WORKDIR $DEV_ROOT

CMD su $DEV_USR
