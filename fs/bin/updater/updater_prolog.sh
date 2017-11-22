#!/bin/sh

source /bin/updater/updater_common.sh

while [ -f ${UPDATE_PROCESSING} ]; do
    minidrone_leds _O__ ; usleep 500000 ;
    minidrone_leds __O_ ; usleep 500000 ;
done
