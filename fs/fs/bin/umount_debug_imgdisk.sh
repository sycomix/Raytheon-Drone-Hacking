#!/bin/sh

DEBUG_MOUNT_PATH=${1}

if [ -n "$(mount | grep ${DEBUG_MOUNT_PATH})" ]; then
  echo "[USB debug key] unmounting ..."
  umount ${DEBUG_MOUNT_PATH}
  losetup -d /dev/loop1 2>/dev/null
  # Make it read-only by default
  chmod 400 ${DEBUG_MOUNT_PATH}
  sync
  echo "[USB debug key] unmounted"
fi
