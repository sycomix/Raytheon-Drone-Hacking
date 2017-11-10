#!/bin/sh
source delos_shell.sh
source dragon_shell.sh
source user_gpio.sh
DRAGONSHELL_showScriptName

EVOFILE=/factory/evo.txt

echo "USB VBUS detected, Start in USB device mode"| logger -s -t "ShortPress" -p user.info

lsmod | grep g_multi > /dev/null
RESULT=$?

if [ 0 -eq $RESULT ]; then
  echo "Already in USB debug mode. Do nothing"| logger -s -t "ShortPress" -p user.info
else
    lsof | grep ${DELOS_DEBUG_MOUNT_PATH} | awk '{system("kill -9 "$1)}'
    usleep 5000
    /bin/umount_debug_imgdisk.sh ${DELOS_DEBUG_MOUNT_PATH}

    gpio_out USB_MUX_CMD 0

    if [ -f ${EVOFILE} ];then
        # Set eyes to orange
        minidrone_leds _OO_
        PID="0x0907"
    else
        # Set left eye to orange
        minidrone_leds _OR_
        PID="0x0900"
    fi

    #
    # Start script watching the data traffic on USB
    # Start it before loading g_multi
    # so we can check whether the massstorage is mounted or not
    # by the remote computer.
    #
    #device_monitoring.sh&

    #
    # Load USB gadget driver
    #
    SERIALNUM=$(cat /factory/serial.txt)
    if [ ! -n "${SERIALNUM}" ]; then
        SERIALNUM="PIxxxxxxxxxxxxxxxx"
    fi

    G_MULTI_OPTIONS="idVendor=0x19cf idProduct=${PID} iManufacturer=Parrot iProduct=RollingSpider iSerialNumber=${SERIALNUM}"

    # Linux complains about soft_irqs not properly handled if g_multi is loaded too soon after USB role switch
    usleep 500000

    if [ -e /data/usb_debug_disk.img ]; then
        # Probe gadgets (mass storage, serial and ethernet) :
        modprobe g_multi file=/data/usb_debug_disk.img stall=0 removable=y ${G_MULTI_OPTIONS}
    else
        echo "No available disk image for usb mass storage gadget"
        # Probe gadgets (serial and ethernet, not mass storage) :
        modprobe g_multi ${G_MULTI_OPTIONS}
    fi

    # Configure serial connection.
    /usr/bin/setsid /sbin/getty -L -n -l /bin/sh /dev/ttyGS0 115200 vt102  &

    # Configure ethernet interface
    /sbin/ifconfig usb0 192.168.2.1 netmask 255.255.255.0 up
    /usr/sbin/udhcpd /etc/udhcpd_usb0.conf

    if [ "$(cat /tmp/.boot/usbmode)" == "init" ];
    then
        sleep 3
    fi

    if [ -f ${EVOFILE} ];then
        # Set eyes to green
        minidrone_leds _GG_
    else
        # Set left eye to green
        minidrone_leds _GR_
    fi


fi #"Already in USB device mode. Do nothing"

