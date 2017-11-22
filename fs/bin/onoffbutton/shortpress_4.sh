#!/bin/sh
# Script called when pressing the ON/OFF button once
source /bin/user_gpio.sh

VBUS=$(gpio_in "VBUS_DETECT")
if [ ${VBUS} -eq 1 ];
then
    echo "Triggered USB debug mode" | logger -s -t "ShortPress" -p user.info
    /bin/delos_gadgetmode_stop.sh| logger -s -t "USB Debug mode" -p user.info
    /bin/delos_usb_debug_mode_switch.sh| logger -s -t "USB Debug mode" -p user.info
else
    echo "USB unplugged: Do nothing" | logger -s -t "ShortPress" -p user.info
fi
