#!/bin/sh

USBDISKIMG_PATH=${1}
MOUNT_PATH=${2}

if [ ! -n "$(mount | grep ${MOUNT_PATH})" ]; then
  echo "[USB key] mounting ..."
  losetup -o 4096 /dev/loop0 ${USBDISKIMG_PATH}
  mkdir -p ${MOUNT_PATH}
  mount -t vfat /dev/loop0 ${MOUNT_PATH}
  fsck_msdos -y /dev/loop0
  echo "[USB key] mounted"
fi
