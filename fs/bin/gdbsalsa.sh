#!/bin/sh

killall -9 gdbserver
killall -9 salsa_p6idev_linux
                                                                                
gdbserver localhost:10001 /NFS/salsa_p6idev_linux & 
