#!/bin/sh - 
#===============================================================================
#
#          FILE:  etron_checker.sh
# 
#         USAGE:  ./etron_checker.sh 
# 
#   DESCRIPTION:  Check the Etron EEPROM and flash it if not the correct version
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR: Florian LEPRINCE (), florian.leprince.ext@parrot.com
#       COMPANY: Parrot
#       CREATED: 11/13/2013 02:52:13 PM CET
#      REVISION:  ---
#===============================================================================

#
# Parameters
#
# $1 : 
# $2 : name of the Linux device (/dev/videoxxx)
#

source /bin/user_gpio.sh

set -o nounset                              # Treat unset variables as an error

echo "Checking with '$1' binary file"

testfile="/data/flashing_eeprom.txt"

if [ -f $testfile ] ; then
    echo found $testfile
    echo last eeprom flash has not been stoped normally
else
    res=`etron_flasher -C "$1"`
    echo "${res}" | grep "\[etron_flasher\] Current version of EEPROM :"
    echo "${res}" | grep "\[etron_flasher\] EEPROM OK."
    
    if [[ $? -eq 0 ]] ; then
        exit 0;
    else
        echo "${res}" | grep "\[etron_flasher\] Binary file version :"
        echo "${res}" | grep "\[etron_flasher\] EEPROM is newer than binary file"
        if [[ $? -eq 0 ]] ; then
            exit 0;
        else
            echo "${res}" | grep "\[etron_flasher\] Binary file is for an other product than the one in EEPROM !" >> /dev/null
            if [[ $? -eq 0 ]] ; then
                echo ""
                echo "WARNING !!! =================================================/!\\==="
                echo "Binary file has not the same product code than the one in EEPROM !!"
                echo "==================================================================="
                echo ""
                exit 1;
            fi

            echo EEPROM needs to be flashed
            touch $testfile
            sync
        fi 
    fi
fi

if [ "$2" != "" ]; then
 ETRON_DEVICE_NAME=$2
else
 ETRON_DEVICE_NAME="/dev/video0"
fi

etron_flasher -d ${ETRON_DEVICE_NAME} -f "$1"
if [[ $? -eq 0 ]] ; then
    rm -f $testfile
    sync

    #etron reboot
    echo "Etron reboot"
    gpio_out HRESET_CAM 0
    sleep 2
    gpio_out HRESET_CAM 1
fi

