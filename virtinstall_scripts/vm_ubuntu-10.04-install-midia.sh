#!/bin/bash

echo "Installing Debian 10.04 Lucid Lynx"

NAME=ubuntu10.04
RAM=512
VCPUS=1
OSTYPE=linux
OSVARIANT=ubuntulucid
SIZE=10
GRAPHICS=vnc
LOCATION='/x-files/disks/ubuntu-10.04.4-server-amd64.iso' \

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
