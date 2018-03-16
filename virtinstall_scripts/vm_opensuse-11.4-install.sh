#!/bin/bash

echo "Installing OpenSUSE 11.4"

NAME=opensuse11.4
RAM=512
VCPUS=1
OSTYPE=linux
OSVARIANT=opensuse11
SIZE=10
GRAPHICS=vnc
LOCATION='http://download.opensuse.org/distribution/11.4/repo/oss/' \

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
