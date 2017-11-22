#!/bin/sh

source /bin/delos_shell.sh
source /bin/dragon_shell.sh

name="$(basename $0)"

echo "Check FVT6" | logger -s -t "${name}" -p user.info

FVT6_TRIGGER="/data/trigger-fvt6"
FACT_TRIGGER="/data/trigger-factoryReset"


if [ -f $FVT6_TRIGGER ]; then

    echo "FVT6 setup ..." | logger -s -t "${name}" -p user.info
    /bin/mount_imgdisk.sh ${DELOS_USBDISKIMG_PATH} ${DELOS_MOUNT_PATH}
    /bin/delos_fvt6.sh
    /bin/umount_imgdisk.sh ${DELOS_MOUNT_PATH}                        

    # At next boot do reset factory...
    mv $FVT6_TRIGGER $FACT_TRIGGER
    sync

elif [ -f $FACT_TRIGGER ]; then

    echo "Factory reset" | logger -s -t "${name}" -p user.info
    rm -Rf /data/*

    # already deleted by previous line...
    #rm -f $FACT_TRIGGER

    sync
    reboot

fi

