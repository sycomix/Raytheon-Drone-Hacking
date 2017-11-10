#!/bin/sh

source /bin/dragon_shell.sh
DRAGONSHELL_showScriptName

#
# Parse script arguments
#
USBDISKIMG_PATH=${1}
MOUNT_PATH=${2}
# Disk Size (Mo): shall be power of 2
USBDISKIMG_SIZE_MO=${3}
# The disk label which will be displayed when mounted by Host, 11 char max
USBDISKIMG_LABEL=${4}

if [ -e ${USBDISKIMG_PATH} ]; then
    # The disk image exists, check it

    # Test its size
    FILESIZE=$(stat -c %s ${USBDISKIMG_PATH})
    EXPECTEDSIZE=$(expr ${USBDISKIMG_SIZE_MO} \* 1024 \* 1024)

    if [ ${FILESIZE} -ne ${EXPECTEDSIZE} ]; then
        echo "The existing USB disk image has not the expected size, force its regeneration "

        rm ${USBDISKIMG_PATH}

    else
        # Test its filesystem
	    losetup -o 4096 /dev/loop0 ${USBDISKIMG_PATH}

	    mkdir -p ${MOUNT_PATH}

	    mount -t vfat /dev/loop0 ${MOUNT_PATH}
        ERR=$?

        if [ 0 -ne ${ERR} ]; then
            # Something goes wrong with the disk image, force its regeneration
            echo "The existing USB disk image is not valid, force its regeneration"

            losetup -d /dev/loop0 2>/dev/null

            rm ${USBDISKIMG_PATH}

        else
            umount ${MOUNT_PATH}
            losetup -d /dev/loop0 2>/dev/null

            echo "The USB Disk Image exists and is OK"
        fi

    fi
fi

if [ ! -e ${USBDISKIMG_PATH} ]; then
	# USB Disk Image doesn't exist, create it
	echo "Create USB disk image ..."

	dd bs=1M count=${USBDISKIMG_SIZE_MO} if=/dev/zero of=${USBDISKIMG_PATH}

    # Frees pagecache used by dd
    sync
    echo 3 > /proc/sys/vm/drop_caches

	if [ 0 -ne "$?" ]; then
		echo "Failed to create ${USBDISKIMG_PATH}"
		exit $?
	fi

	HEADS=$(expr ${USBDISKIMG_SIZE_MO} / 4)

	# Create the disk partition table - "np1 tbw" are options passed to fdisk in fake interactive mode
	/sbin/fdisk -S 8 -H $HEADS -C 1024 ${USBDISKIMG_PATH} <<EOF
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
		echo "Failed to create partition table for ${USBDISKIMG_PATH} (error ${ERR})"
		exit $?
	fi

	# Display disk partition table
	/sbin/fdisk -lu ${USBDISKIMG_PATH}
	ERR=$?
	if [ 0 -ne ${ERR} ]; then
		echo "Failed to read partition table of ${USBDISKIMG_PATH} (error ${ERR})"
		exit $?
	fi

	# Offset 4096 = 8 sectors * 512 bytes per sector
	losetup -o 4096 /dev/loop0 ${USBDISKIMG_PATH}
	ERR=$?
	if [ 0 -ne ${ERR} ]; then
		echo "Failed to setup loop0 for ${USBDISKIMG_PATH} (error ${ERR})"
		exit $?
	fi

	# Format disk
	mkfs.vfat /dev/loop0 -n ${USBDISKIMG_LABEL}
	ERR=$?
	if [ 0 -ne ${ERR} ]; then
		echo "Failed to format ${USBDISKIMG_PATH} (error ${ERR})"
		losetup -d /dev/loop0 2>/dev/null
		exit $?
	fi

	losetup -d /dev/loop0 2>/dev/null

fi

