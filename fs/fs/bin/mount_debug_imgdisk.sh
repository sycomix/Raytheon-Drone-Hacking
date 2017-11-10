#!/bin/sh

DEBUG_USBDISKIMG_PATH=${1}
DEBUG_MOUNT_PATH=${2}

if [ ! -n "$(mount | grep ${DEBUG_MOUNT_PATH})" ]; then
  echo "[USB key debug] mounting ..."
  losetup -o 4096 /dev/loop1 ${DEBUG_USBDISKIMG_PATH}
  mkdir -p ${DEBUG_MOUNT_PATH}
  mount -t vfat /dev/loop1 ${DEBUG_MOUNT_PATH}
  fsck_msdos -y /dev/loop1
  echo "[USB key debug] mounted"
fi
