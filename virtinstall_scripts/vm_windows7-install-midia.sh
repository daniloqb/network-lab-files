#!/bin/bash

echo "Installing Windows 7"

NAME=win7
RAM=2048
VCPUS=2
OSTYPE=windows
OSVARIANT=win7
SIZE=30
GRAPHICS=vnc
LOCATION='/x-files/disks/pt_windows_7_enterprise_with_sp1_x64_dvd_u_677668.iso
' \

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
