#!/bin/bash

echo "Installing OpenSUSE 12.3"

NAME=opensuse12.3
RAM=512
VCPUS=1
OSTYPE=linux
OSVARIANT=opensuse12
SIZE=10
GRAPHICS=vnc
LOCATION='http://download.opensuse.org/distribution/12.3/repo/oss/' \

virt-install \
--name $NAME \
--ram=$RAM \
--vcpus=$VCPUS \
--os-type=$OSTYPE \
--os-variant=$OSVARIANT \
--graphics $GRAPHICS \
--disk size=$SIZE \
--location $LOCATION \
--network default \
--console pty,target_type=serial
--extra-args="console=ttyS0,115200n8 serial"

#--network type=direct,source=eth0,model=virtio
