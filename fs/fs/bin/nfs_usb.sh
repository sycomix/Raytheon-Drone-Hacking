#!/bin/sh
ip="192.168.2.2"
if [ "$#" == "1" ]; then
ip="192.168.2."$1
fi

echo "Connecting to "$ip
mkdir -p /mnt/nfs
modprobe nfs
mount -o nolock,proto=tcp -t nfs $ip:/srv/nfs /mnt/nfs

