#!/bin/sh

source /bin/user_gpio.sh

gpio_out MOTOR_FAULT 0

for i in 0 1 2 3; do

  valid_pwm 10000 0 ${i} &
  usleep 200000
  killall -9 valid_pwm

done

