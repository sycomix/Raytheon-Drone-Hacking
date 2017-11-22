#!/bin/sh
source delos_shell.sh

EVO_FILE=evo.txt
STYLE_FILE=style.txt

if [ -f ${DELOS_MOUNT_PATH}/${EVO_FILE} ];then
  mount /factory -o remount,rw

  echo "Copy new evo file in factory partition" | logger -s -t "DV1 EVO style replacement" -p user.info
  cp -f ${DELOS_MOUNT_PATH}/${EVO_FILE} /factory/${EVO_FILE}

  rm -f ${DELOS_MOUNT_PATH}/${EVO_FILE}

  mount /factory -o remount,ro
fi

if [ -f ${DELOS_MOUNT_PATH}/${STYLE_FILE} ];then
  mount /factory -o remount,rw

  echo "Copy new style file in factory partition" | logger -s -t "DV1 EVO style replacement" -p user.info
  cp -f ${DELOS_MOUNT_PATH}/${STYLE_FILE} /factory/${STYLE_FILE}

  rm -f ${DELOS_MOUNT_PATH}/${STYLE_FILE}

  mount /factory -o remount,ro
fi
