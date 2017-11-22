#! /bin/sh
#
# release.sh
#


source /bin/user_gpio.sh

(
i=0
while [ $i -lt 30 ]; do
    minidrone_leds _GG_
    usleep 200000
    minidrone_leds ____
    usleep 200000
    i=$(($i+1))
done
minidrone_leds _GG_
)&

