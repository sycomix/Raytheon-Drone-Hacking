#!/bin/sh

source /bin/dragon_shell.sh
DRAGONSHELL_showScriptName

#
# Parse script arguments
#
DEBUG_USBDISKIMG_PATH=${1}
DEBUG_MOUNT_PATH=${2}
# Disk Size (Mo): shall be power of 2
DEBUG_USBDISKIMG_SIZE_MO=${3}
# The disk label which will be displayed when mounted by Host, 11 char max
DEBUG_USBDISKIMG_LABEL=${4}

if [ -e ${DEBUG_USBDISKIMG_PATH} ]; then
    # The disk image exists, check it

    # Test its size
    FILESIZE=$(stat -c %s ${DEBUG_USBDISKIMG_PATH})
    EXPECTEDSIZE=$(expr ${DEBUG_USBDISKIMG_SIZE_MO} \* 1024 \* 1024)

    if [ ${FILESIZE} -ne ${EXPECTEDSIZE} ]; then
        echo "The existing USB debug disk image has not the expected size, force its regeneration "

        rm ${DEBUG_USBDISKIMG_PATH}

    else
        # Test its filesystem
	    losetup -o 4096 /dev/loop1 ${DEBUG_USBDISKIMG_PATH}

	    mkdir -p ${DEBUG_MOUNT_PATH}

	    mount -t vfat /dev/loop1 ${DEBUG_MOUNT_PATH}
        ERR=$?

        if [ 0 -ne ${ERR} ]; then
            # Something goes wrong with the disk image, force its regeneration
            echo "The existing USB debug disk image is not valid, force its regeneration"

            losetup -d /dev/loop1 2>/dev/null

            rm ${DEBUG_USBDISKIMG_PATH}

        else
            umount ${DEBUG_MOUNT_PATH}
            losetup -d /dev/loop1 2>/dev/null

            echo "The USB debug Disk Image exists and is OK"
        fi

    fi
fi

if [ ! -e ${DEBUG_USBDISKIMG_PATH} ]; then
	# USB Disk Image doesn't exist, create it
	echo "Create USB debug disk image ..."

	dd bs=1M count=${DEBUG_USBDISKIMG_SIZE_MO} if=/dev/zero of=${DEBUG_USBDISKIMG_PATH}

    # Frees pagecache used by dd
    sync
    echo 3 > /proc/sys/vm/drop_caches

	if [ 0 -ne "$?" ]; then
		echo "Failed to create ${DEBUG_USBDISKIMG_PATH}"
		exit $?
	fi

	HEADS=$(expr ${DEBUG_USBDISKIMG_SIZE_MO} / 4)

	# Create the disk partition table - "np1 tbw" are options passed to fdisk in fake interactive mode
	/sbin/fdisk -S 8 -H $HEADS -C 1024 ${DEBUG_USBDISKIMG_PATH} <<EOF
n
p
1


t
b
w
EOF

	ERR=$?
	# On board, fdisk always raises a warning when rereading partition table and then returns error 1
	if [ 0 -ne ${ERR} -a 1 -ne ${ERR} ]; then
		echo "Failed to create partition table for ${DEBUG_USBDISKIMG_PATH} (error ${ERR})"
		exit $?
	fi

	# Display disk partition table
	/sbin/fdisk -lu ${DEBUG_USBDISKIMG_PATH}
	ERR=$?
	if [ 0 -ne ${ERR} ]; then
		echo "Failed to read partition table of ${DEBUG_USBDISKIMG_PATH} (error ${ERR})"
		exit $?
	fi

	# Offset 4096 = 8 sectors * 512 bytes per sector
	losetup -o 4096 /dev/loop1 ${DEBUG_USBDISKIMG_PATH}
	ERR=$?
	if [ 0 -ne ${ERR} ]; then
		echo "Failed to setup loop1 for ${DEBUG_USBDISKIMG_PATH} (error ${ERR})"
		exit $?
	fi

	# Format disk
	mkfs.vfat /dev/loop1 -n ${DEBUG_USBDISKIMG_LABEL}
	ERR=$?
	if [ 0 -ne ${ERR} ]; then
		echo "Failed to format ${DEBUG_USBDISKIMG_PATH} (error ${ERR})"
		losetup -d /dev/loop1 2>/dev/null
		exit $?
	fi

	losetup -d /dev/loop1 2>/dev/null

fi

