#!/bin/sh

while [ -f /tmp/.updater.scanning  ]; do
    minidrone_leds _O__ ; sleep 1 ;
    minidrone_leds __O_ ; sleep 1 ;
done; minidrone_leds _OO_;
