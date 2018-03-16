#!/bin/bash

echo "Installing Debian 8 Jessie"

NAME=debian8
RAM=512
VCPUS=1
OSTYPE=linux
OSVARIANT=generic
SIZE=10
GRAPHICS=vnc
LOCATION='http://ftp.nl.debian.org/debian/dists/jessie/main/installer-amd64/'

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
