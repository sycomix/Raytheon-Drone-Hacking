#!/bin/sh

source /bin/delos_shell.sh

name=$(basename $0)

EVOFILE=/factory/evo.txt

OLD_STAT=0
NEW_STAT=1

DebugFlag=0
DEBUG()
{
   if [ "${DebugFlag}" == "1" ]; then echo -e "\033[31m[DEVICE MONITORING] $1\033[0m"; fi
}

IMG_FILE=${DELOS_USBDISKIMG_PATH}


STATE=4
PREVIOUS_STATE=4
COUNT=0
MAX_COUNT=30
MAX_COUNT_CHARGER=3
ALREADY_EJECTED=0

# state : four states
# 0 : no transfert data for 60 seconds
# 1 : writing data
# 2 : reading data
# 3 : waiting data
# 4 : disk was never accessed

DEBUG "Start monitoring ${IMG_FILE}"

while [ $STATE != 0 ];
do
    RETURN_INOTIFY=$(inotifywait -t 2 $IMG_FILE 2>&1)

    MODIFY_FILE=$(echo $RETURN_INOTIFY | grep "MODIFY")
    ACCESS_FILE=$(echo $RETURN_INOTIFY | grep "ACCESS")

    GADGET_INFO=$(cat /sys/devices/platform/p6i-ehci.0/gadget/lun0/file)
    #logger -s -t $name -p user.info "... cnt=$COUNT... mdfy=$MODIFY_FILE acss=$ACCESS_FILE gadget/lun0/file=$GADGET_INFO"

    if [ -n "$GADGET_INFO" ];
    then
        ALREADY_EJECTED=0
    fi

    if [ -z "$GADGET_INFO" -a $ALREADY_EJECTED -eq 0 ];
    then
        logger -s -t $name -p user.info "Device has been ejected by host... Restart timer..."
        ALREADY_EJECTED=1
        COUNT=0
    elif [ -n "$MODIFY_FILE" ];
    then
        STATE=1
        COUNT=0

	DEBUG " Modification"

        if [ "$PREVIOUS_STATE" -ne "$STATE" ]
        then

            if [ "$PREVIOUS_STATE" = 2 ];
            then

                #stop orange blink if enabled
                PID_BLINK_LED_GREEN=$(ps | grep blink_led_green | sed -n '1p' | awk '{printf $1}')
                if [ -d "/proc/${PID_BLINK_LED_GREEN}" ];then
                    kill -9 ${PID_BLINK_LED_GREEN}
                fi
                PID_SLEEP=$(ps | grep usleep | sed -n '1p' | awk '{printf $1}')
                if [ -d "/proc/${PID_SLEEP}" ];then
                    kill -9 ${PID_SLEEP}
                fi
            fi
            (/bin/blink_led_orange.sh)&
        fi


    elif [ -n "$ACCESS_FILE" ];
    then
        STATE=2
        COUNT=0

        DEBUG "Access"

        if [ "$PREVIOUS_STATE" -ne "$STATE" ]
        then
            if [ "$PREVIOUS_STATE" = 1 ];
            then
                PID_BLINK_LED_ORANGE=$(ps | grep blink_led_orange | sed -n '1p' | awk '{printf $1}')
                if [ -d "/proc/${PID_BLINK_LED_ORANGE}" ];then
                    kill -9 ${PID_BLINK_LED_ORANGE}
                fi
                PID_SLEEP=$(ps | grep usleep | sed -n '1p' | awk '{printf $1}')
                if [ -d "/proc/${PID_SLEEP}" ];then
                    kill -9 ${PID_SLEEP}
                fi
            fi
            (/bin/blink_led_green.sh)&
        fi


    else
        if [ "$PREVIOUS_STATE" != 4 ]; then
            STATE=3
        fi

        let "COUNT=COUNT+1"

        if [ "$PREVIOUS_STATE" = 1 ];
        then
            PID_BLINK_LED_ORANGE=$(ps | grep blink_led_orange | sed -n '1p' | awk '{printf $1}')
            if [ -d "/proc/${PID_BLINK_LED_ORANGE}" ];then
                kill -9 ${PID_BLINK_LED_ORANGE}
            fi
            PID_SLEEP=$(ps | grep usleep | sed -n '1p' | awk '{printf $1}')
            if [ -d "/proc/${PID_SLEEP}" ];then
                kill -9 ${PID_SLEEP}
            fi
        fi

        if [ "$PREVIOUS_STATE" = 2 ];
        then

            #stop orange blink if enabled
            PID_BLINK_LED_GREEN=$(ps | grep blink_led_green | sed -n '1p' | awk '{printf $1}')
            if [ -d "/proc/${PID_BLINK_LED_GREEN}" ];then
                kill -9 ${PID_BLINK_LED_GREEN}
            fi
            PID_SLEEP=$(ps | grep usleep | sed -n '1p' | awk '{printf $1}')
            if [ -d "/proc/${PID_SLEEP}" ];then
                kill -9 ${PID_SLEEP}
            fi
        fi

        # Tmp Behaviour
        if [ -f ${EVOFILE} ];then
          # Set eyes to green
          minidrone_leds _GG_
        else
          # Set left eye to green
          minidrone_leds _GR_
        fi
    fi

    DEBUG "Count is now ${COUNT}"

    if [ "$COUNT" -eq "$MAX_COUNT" ];
    then
        STATE=0
    fi

    PREVIOUS_STATE=$STATE
done

if [ ! -f /tmp/.bleproxy.ftpinprogress -a ! -f /tmp/.shell.userconnected -a ! -f /tmp/.bleproxy.flightinprogress ]; then
    logger -s -t $name -p user.info "Try to eject device..."
    echo > /sys/devices/platform/p6i-ehci.0/gadget/lun0/file
    GADGET_INFO=$(cat /sys/devices/platform/p6i-ehci.0/gadget/lun0/file)
    if [ -z "$GADGET_INFO" ];
    then
        logger -s -t $name -p user.info "Device is ejected..."

        logger -s -t $name -p user.info "Unload possible gadget modules..."
        rmmod g_multi
        rmmod g_mass_storage

        logger -s -t $name -p user.info "Call powerOff.sh..."
        /bin/delos_shutdown.sh
    else
        logger -s -t $name -p user.info "Device was NOT ejected..."
        logger -s -t $name -p user.info "Assume host has us locked..."
        logger -s -t $name -p user.info "Restart $0..."
        ($0)&
    fi
else
    logger -s -t $name -p user.info "A Shell is connected... Do not shutdown"
fi

if [ -f /tmp/.bleproxy.ftpinprogress ]; then
    (/bin/device_monitoring.sh)&
fi


