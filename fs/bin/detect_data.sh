



blink=0
OLD_STAT_LOCAL=0
NEW_STAT_LOCAL=0
while [ 1 ];
do

        if [ "$OLD_STAT_LOCAL" != "$NEW_STAT_LOCAL" ];
        then
            blink=1
        else
            blink=0
        fi

        OLD_STAT_LOCAL=$NEW_STAT_LOCAL

        if [ $blink = 1 ];
        then
            #usleep 500000
            sleep 1
            gpio 33 -d ho 0
            gpio 30 -d ho 0
            gpio 31 -d ho 0
            gpio 32 -d ho 0
        fi

        #usleep 500000
        sleep 1
        gpio 33 -d ho 1
        gpio 30 -d ho 1
        gpio 31 -d ho 1
        gpio 32 -d ho 1

        #sync
        NEW_STAT_LOCAL=$(stat /data/usb_disk.img | sed -n "7p")
done
