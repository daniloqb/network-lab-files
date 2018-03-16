#!/bin/bash

MIDIA="/x-files/disks/CentOS-7-x86_64-Minimal-1611.iso"
CDROM="/mnt/cdrom"
NAME=centOS
RAM=512
VCPUS=1
OSTYPE=linux
OSVARIANT=generic
SIZE=20

echo "Mounting Midia"

mount -o loop $MIDIA $CDROM


echo "Begining domain install"

virt-install \
-n $NAME \
-r $RAM \
--disk size=$SIZE \
--location $CDROM --nographics \
--extra-args="console=tty0 console=ttyS0,115200n8" \
--disk=path=$MIDIA,device=cdrom
