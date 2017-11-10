#!/bin/sh

# UDEV script

#
# Parameters:
# $1 : action (add_usb, add_v4l, or remove)
# $2 : device name

#Redirect the output to the console
exec > /dev/console

echo "Setup Etron chip - device <$2> - action <$1>..."

if [ "${1}" == "add_v4l" ]; then

  if [ ! -e /tmp/.boot/etronchecked ]; then
        #
        # Check EEPROM with latest file
        #
        echo " Checking Etron FW"
        etron_checker.sh /lib/firmware/etron/etron_latest.bin /dev/${2}
        touch /tmp/.boot/etronchecked
  #else
        #
        # Reset the Etron Chip
        #
        #delos_devmem_2.sh "off" "ETRON"
        #sleep 1
        #delos_devmem_2.sh "on" "ETRON"
        #sleep 1
        #sync
  fi

  echo "Linking <$2>"
  rm -f /dev/etron
  ln -s /dev/${2} /dev/etron

  sprop state.etron ready
fi

if [ "${1}" == "remove" ]; then
  echo "Removing Etron symlink"
  if [ -e /dev/etron ]; then
    rm /dev/etron
  fi

  # Reset the Etron Chip
  #
  delos_devmem_2.sh "off" "ETRON"
  sleep 1
  delos_devmem_2.sh "on" "ETRON"
  sleep 1
  sync

  sprop state.etron off
fi

