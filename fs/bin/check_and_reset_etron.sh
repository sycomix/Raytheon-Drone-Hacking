#!/bin/sh

while [ ! -e /dev/video0 -a ! -e /dev/video1 ]; do
    /usr/bin/gpio 58 -d ho 0
    for i in $(seq 1 10)
    do
        #right leds on
        gpio 30 -d ho 1
        gpio 32 -d ho 1
        usleep 200
        #right leds on
        gpio 30 -d ho 0
        gpio 32 -d ho 0
        usleep 200
    done
    sleep 4
    /usr/bin/gpio 58 -d ho 1
    for i in $(seq 1 10)
    do
        #right leds on
        gpio 30 -d ho 1
        gpio 32 -d ho 1
        usleep 200
        #right leds on
        gpio 30 -d ho 0
        gpio 32 -d ho 0
        usleep 200
    done
    sleep 4
    sync
done




