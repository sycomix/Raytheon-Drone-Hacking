#!/bin/sh

source dragon_shell.sh
source delos_shell.sh
source user_gpio.sh
DRAGONSHELL_showScriptName

#
# Kill the shell attached to ttyGS0 (serial link over USB)
#
PID_TTYGS0=$(lsof | grep  /dev/ttyGS0 | uniq | cut  -f 1)
if [ -n "${PID_TTYGS0}" ]; then
    kill -9 ${PID_TTYGS0}
fi

#
# Kill the network connection
#
killall -q udhcpd
ifconfig usb0 down

# Unload the drivers managing USB device mode in Linux
modprobe -r g_multi
modprobe -r g_mass_storage
modprobe -r fsl_usb2_udc

gpio_out USB_MUX_CMD 1

#
# Stop the scripts which were monitoring the USB device mode
#
DRAGONSHELL_kill_ifrunning device_monitoring
DRAGONSHELL_kill_ifrunning sleep
DRAGONSHELL_kill_ifrunning detect_data
DRAGONSHELL_kill_ifrunning usleep
DRAGONSHELL_kill_ifrunning blink_led_orangeleft
DRAGONSHELL_kill_ifrunning blink_led_greenleft

EVOFILE=/factory/evo.txt
if [ -f ${EVOFILE} ];then
    # Reset battery charger algo
    (/bin/qualcomm_charger_algo_reset.sh)&
fi

# Set leds to orange
minidrone_leds _OO_
