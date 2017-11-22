#!/bin/sh - 

modprobe -r ehci-hcd

echo 0 > /sys/devices/platform/user_gpio/USB_MUX_CMD/value

# EVO product ID
PID="0x0907"
SERIALNUM=$(cat /factory/serial.txt)
G_MULTI_OPTIONS="idVendor=0x19cf idProduct=${PID} iManufacturer=Parrot iProduct=RollingSpider iSerialNumber=${SERIALNUM}"
modprobe g_multi ${G_MULTI_OPTIONS}

# Configure serial connection.
/usr/bin/setsid /sbin/getty -L -n -l /bin/sh /dev/ttyGS0 115200 vt102  &

# Configure ethernet interface
/sbin/ifconfig usb0 192.168.2.1 netmask 255.255.255.0 up
/usr/sbin/udhcpd /etc/udhcpd_usb0.conf


