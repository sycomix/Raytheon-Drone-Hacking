#!/bin/sh

ifconfig eth0 up
ifconfig eth0 192.168.1.2 netmask 255.255.255.0 up && echo "eth0 up"

mkdir -p /NFS
mount 192.168.1.1:/NFS -t nfs /NFS -o nolock && echo "nfs up"
route add default gw 192.168.1.1

echo 4 > /proc/cpu/alignment
devmem2 0xD0000264 w 0x110404
sleep 1
devmem2 0xD0000264 w 0x100404            


