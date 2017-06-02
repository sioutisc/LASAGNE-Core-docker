#
# Dockerfile for https://github.com/LASAGNE-Open-Systems/LASAGNE-Core
#

FROM ubuntu:17.04

# Update package repositories and install build-essential

RUN apt-get update
RUN apt-get install -y build-essential git figlet

# Working from /opt

WORKDIR /opt

# clone LASAGNE-Core and dependencies

RUN git clone --depth 1 git://github.com/DOCGroup/MPC.git \
 && git clone -b Latest_Micro --depth 1 git://github.com/DOCGroup/ACE_TAO.git \
 && git clone --depth 1 git://github.com/objectcomputing/OpenDDS.git \
 && git clone --depth 1 git://github.com/LASAGNE-Open-Systems/LASAGNE-Core.git

# Setup environment variables

ENV MPC_ROOT /opt/MPC

ENV ACE_ROOT /opt/ACE_TAO/ACE

ENV TAO_ROOT /opt/ACE_TAO/TAO

ENV DDS_ROOT /opt/OpenDDS

ENV DAF_ROOT /opt/LASAGNE-Core

ENV TAF_ROOT $DAF_ROOT/TAF

ENV LD_LIBRARY_PATH $LD_LIBRARY_PATH:$ACE_ROOT/lib:$DDS_ROOT/lib:$DAF_ROOT/lib

# Prepare to build LASAGNE-Core

RUN cp $DAF_ROOT/bin/build/ace/config.h $ACE_ROOT/ace/config.h \
 && cp $DAF_ROOT/bin/build/ace/default.features $ACE_ROOT/bin/MakeProjectCreator/config/default.features \
 && cp $DAF_ROOT/bin/build/ace/platform_macros.GNU $ACE_ROOT/include/makeinclude/platform_macros.GNU

# build LASAGNE-Core

WORKDIR $TAF_ROOT

RUN perl $ACE_ROOT/bin/mwc.pl -type gnuace -workers 2 TAF_CI.mwc \
 && make --jobs 2

# copy TextParser script and execute it

WORKDIR $DAF_ROOT/bin

ADD TextParser.sh $DAF_ROOT/bin

CMD ./TextParser.sh
