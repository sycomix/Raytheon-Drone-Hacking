#!/bin/sh
lsusb | sed "s/\(1d6b:0002\)/\1   Root Hub/" | sed "s/\(1e4e:0104\)/\1   EtronTech Video Chip + MT9V117 Camera/"
