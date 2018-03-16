#!/bin/bash

echo "Installing FreeBSD 11.1"

NAME=freebsd
RAM=2048
VCPUS=2
OSTYPE=generic
OSVARIANT=generic
SIZE=10
GRAPHICS=vnc
LOCATION='/x-files/disks/FreeBSD-11.1-RELEASE-amd64-dvd1.iso' \

virt-install \
--name $NAME \
--ram=$RAM \
--vcpus=$VCPUS \
--os-type=$OSTYPE \
--os-variant=$OSVARIANT \
--graphics $GRAPHICS \
--disk size=$SIZE \
--cdrom $LOCATION \
--network default \
--console pty,target_type=serial

#--network type=direct,source=eth0,model=virtio
