#!/bin/sh

MOUNT_PATH=${1}

if [ -n "$(mount | grep ${MOUNT_PATH})" ]; then
  echo "[USB key] unmounting ..."
  umount ${MOUNT_PATH}
  losetup -d /dev/loop0 2>/dev/null
  # Make it read-only by default
  chmod 400 ${MOUNT_PATH}
  sync
  echo "[USB key] unmounted"
fi
