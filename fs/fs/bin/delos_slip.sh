#
# Delos Project
#
# Switch the Delos serial port to networking mode and configure it to use TCP/IP to connect to a PC
#

ttydev=/dev/ttyPA1
ttyif=sl0
log=/log/slip.log
speed=115200

if [ "$1" == "" ]; then
echo "Executing in a new session ..."
setsid $0 start
echo "... new session done."


elif [ "$1" == "stop" ]; then
echo "Delos: SLIP protocol: unbinding $ttyif"
killall -9 slattach;                         
slattach -L -p tty -s 115200 $ttydev -e

elif [ "$1"=="start" ]; then
echo "Slip log" > $log && sync
echo "Delos: starting TCP/IP services" | tee $log && sync
inetd
telnetd -l /bin/sh
echo "Delos: SLIP protocol: binding $ttydev to $ttyif" | tee $log && sync
slattach -L -p slip -s $speed $ttydev -e
ifconfig $ttyif up >> $log && sync
ifconfig $ttyif 192.168.2.1 pointopoint 192.168.2.2 >> $log && sync
ifconfig >> $log && sync

fi


