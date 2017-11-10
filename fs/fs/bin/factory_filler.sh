#!/bin/sh

FACTORY_DIR="/factory"
MAC_GENERATOR="/usr/bin/random_mac"
SN_GENERATOR="/usr/bin/random_sn"

ask_factory_file() {
    read -p "Please enter the content of $1 [$2]: " READ
    READ=${READ:-"$2"}
    echo "$READ" > "$FACTORY_DIR/$1"
}

#--------------- main -------------------------#

echo "Welcome to Factory Filler Tool !"

#remount /factory with rw option
mount -t ubifs -o remount,rw ubi0:factory /factory

#ask user content of factory files
if [ $(gprop ro.hardware) == "delosevosip6board" ]; then
    ask_factory_file "evo.txt" "brick"
    ask_factory_file "style.txt" "mars"
else
    read -p "Am I a wingx? (y/N): " WINGX
    if [ "$WINGX" == "y" ]; then
        touch /factory/wingx.txt
    fi
fi
ask_factory_file "serial.txt" "$($SN_GENERATOR PI9990012345)"
ask_factory_file "mac_address.txt" "$($MAC_GENERATOR)"

sync

#remount /factory with default options
mount -t ubifs -o remount,ro,no_chk_data_crc,nosuid,nodev ubi0:factory /factory
