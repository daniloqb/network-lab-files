#!/bin/bash

echo "Installing Debian 14.04 Trusty Tahr"

NAME=ubuntu14.04
RAM=512
VCPUS=1
OSTYPE=linux
OSVARIANT=generic
SIZE=10
GRAPHICS=vnc
LOCATION='http://archive.ubuntu.com/ubuntu/dists/trusty/main/installer-amd64/' \

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
