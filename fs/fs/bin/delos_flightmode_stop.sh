#!/bin/sh

source dragon_shell.sh
source delos_shell.sh
source user_gpio.sh

DRAGONSHELL_showScriptName

DRAGONSHELL_kill_ifrunning freeflight_monitoring

# Synchronise filesystems
sync
echo "3" > /proc/sys/vm/drop_caches

# Kill all processes which write in the internal memory, before unmount it
lsof | grep ${DELOS_MOUNT_PATH} | awk '{system("kill "$1)}'

/bin/umount_imgdisk.sh ${DELOS_MOUNT_PATH}

#
# Remove USB host mode drivers
#
modprobe -r ehci-hcd

