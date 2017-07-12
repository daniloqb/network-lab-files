NAME=ubuntu17
RAM=512
OSTYPE=linux
OSVARIANT=ubuntusaucy
DISK=/var/lib/libvirt/images/ubuntu17.qcow2
#LOCATION=http://ftp.unicamp.br/pub/debian/dists/Debian9.0/main/installer-amd64/
LOCATION=http://us.archive.ubuntu.com/ubuntu/dists/zesty/main/installer-amd64/

virt-install \
--name $NAME \
--ram=$RAM \
--vcpus=1 \
--os-type=$OSTYPE \
--os-variant=$OSVARIANT \
--graphics vnc \
--disk path=$DISK,size=8 \
--location $LOCATION \
--network default \
--extra-args="console=tty0 console=ttyS0, 115200"

#--network type=direct,source=eth0,model=virtio
