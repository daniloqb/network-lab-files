#!/bin/bash

echo "Installing OpenSUSE 13.2"

NAME=opensuse13.2
RAM=512
VCPUS=1
OSTYPE=linux
OSVARIANT=generic
SIZE=10
GRAPHICS=vnc
LOCATION='http://download.opensuse.org/distribution/13.2/repo/oss/' \

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
