#!/bin/bash

echo "Installing pfSense CE 2.4.2"

NAME=pfsense2.4.2
RAM=512
VCPUS=1
OSTYPE=generic
OSVARIANT=generic
SIZE=10
GRAPHICS=vnc
LOCATION='/x-files/disks/pfSense-CE-2.4.2-RELEASE-amd64.iso' \

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
