#!/bin/sh

EVOFILE=/factory/evo.txt

if [ -f ${EVOFILE} ];then
  #green light off
  minidrone_leds ____

  while [ 1 ];
  do
    minidrone_leds ____
    usleep 100
    minidrone_leds _OO_
    usleep 100
  done
else
  # Only right eye red
  minidrone_leds __R_

  while [ 1 ];
  do
    minidrone_leds __R_
    usleep 100
    minidrone_leds _OR_
    usleep 100
  done
fi
