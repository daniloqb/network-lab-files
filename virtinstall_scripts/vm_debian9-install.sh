#!/bin/bash

echo "Installing Debian 9 Stretch"

NAME=debian9
RAM=512
VCPUS=1
OSTYPE=linux
OSVARIANT=generic
SIZE=10
GRAPHICS=vnc
LOCATION='http://ftp.nl.debian.org/debian/dists/stretch/main/installer-amd64/'

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
