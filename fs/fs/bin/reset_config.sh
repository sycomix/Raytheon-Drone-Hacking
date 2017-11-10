#!/bin/sh
#
# Script to reset the config.ini file without loosing flying time


echo [general] > /data/config.ini.new
grep "flying_time                    =" /data/config.ini >> /data/config.ini.new
# if serial.txt exists, resetting SSID with it. Else, using the default SSID set at compilation time
if [ -s /factory/serial.txt ]
then
echo [network] >> /data/config.ini.new
echo "ssid_single_player             = ardrone2_`tail -c 7 /factory/serial.txt`" >> /data/config.ini.new
fi
sync
mv /data/config.ini.new /data/config.ini
sync

# Deletes the custom configuration subfolder.
# They are automically recreated by 'program.elf' when necessary.
rm /data/custom.configs/ -r
sync


