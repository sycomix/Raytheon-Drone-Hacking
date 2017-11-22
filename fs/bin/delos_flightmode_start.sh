#!/bin/sh

source dragon_shell.sh
source delos_shell.sh
source user_gpio.sh
source /bin/updater/updater_common.sh
DRAGONSHELL_showScriptName
name="$(basename $0)"



Mount_usrImgDisk()
{

    # Check if imgdisk is mounted
    DMOUNT=`df -h |grep internal_000`
    if [ -n "$DMOUNT" ];then
        echo "User imgDisk internal_000 is mounted. Do nothing"| logger -s -t ${name} -p user.info
        return 1
    fi

    # No disk is mounted
    # Check no user directory has been created on data disk
    DIRCON=`ls -A /data/ftp/internal_000`
    if [ -n "$DIRCON" ];then
        echo "Directory has been created in user data disk. Remove it"| logger -s -t ${name} -p user.warn
        rm -rf /data/ftp/internal_000/*
    fi

    # Check no debug directory has been created on data disk
    DMOUNT=`df -h |grep internal_debug`
    if [ -z "$DMOUNT" ];then
        DIRCON=`ls -A /data/ftp/internal_debug`
        if [ -n "$DIRCON" ];then
            echo "Directory has been created in debug data disk. Remove it"| logger -s -t ${name} -p user.warn
            rm -rf /data/ftp/internal_debug/*
        fi
    fi

    # Check if image disk exist
    if [ ! -e ${DELOS_USBDISKIMG_PATH} ]; then
        echo "User Image Disk not found" | logger -s -t "rcS" -p user.error
        # Create mount point for the virtual USB key
        mkdir -p ${DELOS_MOUNT_PATH}
        # Make it read-only by default
        chmod 400 ${DELOS_MOUNT_PATH}
        #Create image disk
        /bin/create_imgdisk.sh ${DELOS_USBDISKIMG_PATH} ${DELOS_MOUNT_PATH} ${USER_MEM} "Parrot_Minidrone"
    fi
    # Mount image disk
    /bin/mount_imgdisk.sh ${DELOS_USBDISKIMG_PATH} ${DELOS_MOUNT_PATH}

    # Check if imgdisk is mounted
    DMOUNT=`df -h |grep internal_000`
    if [ -z "$DMOUNT" ];then
        echo "User imgDisk internal_000 is not mounted. Try again "| logger -s -t ${name} -p user.error
        sleep 1
        /bin/mount_imgdisk.sh ${DELOS_USBDISKIMG_PATH} ${DELOS_MOUNT_PATH}
        DMOUNT=`df -h |grep internal_000`
        if [ -z "$DMOUNT" ];then
            echo "User imgDisk internal_000 is still not mounted. Clean Data Disk and reboot"| logger -s -t ${name} -p user.error
            #Save last log
            tail -40 /data/ftp/internal_debug/Debug/current/ckcm/ckcm.bin > /tmp/last_log.txt
            #kill apps
            killall -9 ckcmd
            killall -9 dragon-prog
            killall -9 delos_monitor_vbus_script.sh
            #Clean user Data Disk
            rm -fr /data/*
            mv /tmp/last_log.txt /data
            # Reboot
            reboot
        fi
    else
        echo "User imgDisk internal_000 sucessfully mounted."| logger -s -t ${name} -p user.info
    fi
}

Mount_dbgImgDisk()
{

    # Check if imgdisk is mounted
    DMOUNT=`df -h |grep internal_debug`
    if [ -n "$DMOUNT" ];then
        echo "Debug imgDisk internal_debug is mounted. Do nothing"| logger -s -t ${name} -p user.info
        return 1
    fi

    # No disk is mounted
    # Check no folder has been created on data disk
    DIRCON=`ls -A /data/ftp/internal_debug`
    if [ -n "$DIRCON" ];then
        echo "Directory has been created in debug data disk. Remove it"| logger -s -t ${name} -p user.info
        rm -rf /data/ftp/internal_debug/*
    fi

    # Check no user directory has been created on data disk
    DMOUNT=`df -h |grep internal_000`
    if [ -z "$DMOUNT" ];then
        DIRCON=`ls -A /data/ftp/internal_000`
        if [ -n "$DIRCON" ];then
            echo "Directory has been created in user data disk. Remove it"| logger -s -t ${name} -p user.warn
            rm -rf /data/ftp/internal_000/*
        fi
    fi

    # Check if image disk exist
    if [ ! -e ${DELOS_DEBUG_USBDISKIMG_PATH} ]; then
        echo "Debug Image disk not found" | logger -s -t "rcS" -p user.error
        # Create mount point for the virtual USB key
        mkdir -p ${DELOS_DEBUG_MOUNT_PATH}
        # Make it read-only by default
        chmod 400 ${DELOS_DEBUG_MOUNT_PATH}
        #Create image disk
        /bin/create_debug_imgdisk.sh ${DELOS_DEBUG_USBDISKIMG_PATH} ${DELOS_DEBUG_MOUNT_PATH} ${DEBUG_MEM} "Parrot_debug_RS"

    fi
    # Mount image disk
    /bin/mount_debug_imgdisk.sh ${DELOS_DEBUG_USBDISKIMG_PATH} ${DELOS_DEBUG_MOUNT_PATH}
    #Check CKCM is started
    if [ ! "$(pidof ckcmd)" ];then
        DragonDebug.sh
    fi

    # Check if imgdisk is well mounted
    DMOUNT=`df -h |grep internal_debug`
    if [ -z "$DMOUNT" ];then
        echo "Debug imgDisk internal_debug is not mounted. Try again after clean logs "| logger -s -t ${name} -p user.warning
        sleep 1
        #Sometimes CKCMD writing can block mounting process
        killall -9 ckcmd
        # Be sure nothing has been written by CKCM
        rm -rf /data/ftp/internal_debug/*
        /bin/mount_debug_imgdisk.sh ${DELOS_DEBUG_USBDISKIMG_PATH} ${DELOS_DEBUG_MOUNT_PATH}
        # restart CKCM
        (ckcmd -F /data/ftp/internal_debug/Debug/current/ckcm)&
        DMOUNT=`df -h |grep internal_debug`
        if [ -z "$DMOUNT" ];then
            echo "Debug imgDisk internal_debug is still not mounted. Clean user imgDisk"| logger -s -t ${name} -p user.error
            #Save last log
            tail -40 /data/ftp/internal_debug/Debug/current/ckcm/ckcm.bin > /tmp/last_log.txt
            #kill apps
            killall -9 ckcmd
            killall -9 dragon-prog
            killall -9 delos_monitor_vbus_script.sh
            #Clean user Data Disk
            rm -fr /data/*
            mv /tmp/last_log.txt /data
            # Reboot
            reboot
        fi
    else
        echo "Debug imgDisk internal_debug sucessfully mounted."| logger -s -t ${name} -p user.info
    fi
}


# Set eyes to orange
minidrone_leds _OO_

echo "USB VBUS not detected, Start in USB host mode"| logger -s -t ${name} -p user.info

gpio_out USB_MUX_CMD 1

lsmod | grep ehci_hcd > /dev/null
RESULT=$?

if [ 0 -eq $RESULT ]; then
    echo "Already in USB host mode. Do nothing"| logger -s -t ${name} -p user.info
else

    #
    # Load USB host mode drivers
    #
    modprobe ehci-hcd
    modprobe usbcore
    modprobe usb_storage
    # uvcvideo should never be unloaded
    #modprobe uvcvideo

    # Mount disk
    Mount_usrImgDisk
    Mount_dbgImgDisk

    #
    # Check if a PLF file was stored in the virtual USB key
    #
    echo "Check if update is necessary ..."| logger -s -t ${name} -p user.info
    # if usb image disk contains a PLF file, move it to the update partition
    UPDT_TRY_SCAN ${DELOS_MOUNT_PATH}
    /bin/check_update_demos.sh

    model=$(read_hsis_model)
    if [ ${model} = "EVO" ];then
        /bin/DV1_EVO_style_replacement.sh
    fi

    if [ "$(pidof BLEproxy)" ]
    then
        # Nothing to do
        echo ""
    else
        # Relaunch dragon too to reinit disconnection state
        kk
        DRAGONSHELL_checkNstart_dragon &

        echo "BLEproxy is stopped, relaunch it!"| logger -s -t ${name} -p user.info
        (BLEproxy $(cat /etc/BLEproxy.args 2>/dev/null) >/dev/null 2>/dev/null) &
    fi

    tmpFile="/tmp/flightmodeFirstTime.tmp"
    if [ -f ${tmpFile} ];then
        ps | grep -v grep | grep dragon-prog > /dev/null
        ret=$?
        if [ "${ret}" -ne 0 ];then
            echo "dragon-prog is stopped, relaunch it!"| logger -s -t ${name} -p user.info
            DRAGONSHELL_checkNstart_dragon &
        fi
    else
        touch ${tmpFile}
    fi

    (/bin/freeflight_monitoring.sh) &

fi
