#!/bin/sh - 

modprobe -r g_multi
modprobe -r g_mass_storage

echo 1 > /sys/devices/platform/user_gpio/USB_MUX_CMD/value

modprobe ehci-hcd
modprobe usbcore


