#!/bin/sh

source /bin/delos_shell.sh
source /bin/dragon_shell.sh
source /bin/user_gpio.sh

name=$(basename $0)
logger -s -t "$name" -p user.info "Enter $0"

sync
echo "3" > /proc/sys/vm/drop_caches

# Shutdown Dragon Prog
logger -s -t "$name" -p user.info "Do DRAGONSHELL_stopNkill_dragon"
DRAGONSHELL_stopNkill_dragon #see dragon_shell.sh in common skel

# Sync NAND before shutdown (after stopping dragon)
sync

val=$(cat /sys/kernel/hsis/gpio_POWER_ON_OFF_on)
if [ ${val} -eq 0 ]
then
  val=1
else
  val=0
fi
gpio_out "POWER_ON_OFF" "${val}"

sleep 1
logger -s -t "$name" -p user.error "System should be off. GPIO OFF Did not work"

