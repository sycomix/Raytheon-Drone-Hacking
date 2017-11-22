#!/bin/sh -

source /bin/delos_shell.sh
source /bin/user_gpio.sh
source /bin/leds_lib.sh

DEFAULT_PROG="usr/bin/dragon-prog"

PROG_BASE_DIR="/"
USE_GDB=0
NO_CORE_DUMP=0
OUT2NULL=0
BLACKBOX=0
NAVDATA=0
PROG=$DEFAULT_PROG

POST_CMD=""
PRE_CMD=""

if [ -f /etc/debug.conf ]
then
  source /etc/debug.conf
fi

usage()
{
    echo "---------"
    echo " $0 : USAGE :"
    echo "---------"
    echo " Dragon Starter start dragon prog and stop what need to be stopped when it stops..."
    echo " By default, core dump are enabled."
    echo " Options :"
    echo "   -h             show this help"
    echo "   -nfs           Use nfs dir as base directory"
    echo "   -prog <prog>   Use <prog> instead of default prog \"$DEFAULT_PROG\""
    echo "   -gdb           Start dragon with gdbserver"
    echo "   -nogdb         Do not start dragon with gdbserver"
    echo "   -out2null      Send std and stderr output to /dev/null"
    echo "   -noout2null    Do not send std and stderr output to /dev/null"
    echo "   -nocoredump    Do not enable coredump"
    echo "   -coredump      Enable coredump"
    echo "   -B             Enable Blackbox"
    echo "   -b             Disable Blackbox"
    echo "   -N             Enable Navdata"
    echo "   -n             Disable Navdata"
    echo "---------"
}

while [ $# -ne 0 ]; do
    if [ "$1" = "-h" ]; then
        usage
        exit 0
    elif [ "$1" = "-gdb" ]; then
        USE_GDB=1
        shift
    elif [ "$1" = "-nogdb" ]; then
        USE_GDB=0
        shift
    elif [ "$1" = "-nfs" ]; then
        PROG_BASE_DIR="/mnt/nfs"
        shift
    elif [ "$1" = "-prog" ]; then
        shift
        if [ $# -ne 0 ]; then
            PROG=$1
            shift
        else
            echo "<ProgArg> missing after -prog option"
            exit 1
        fi
    elif [ "$1" = "-out2null" ]; then
        shift
        OUT2NULL=1
    elif [ "$1" = "-noout2null" ]; then
        shift
        OUT2NULL=0
    elif [ "$1" = "-nocoredump" ]; then
        shift
        NO_CORE_DUMP=1
    elif [ "$1" = "-coredump" ]; then
        shift
        NO_CORE_DUMP=0
    elif [ "$1" = "-B" ]; then
        shift
        BLACKBOX=1
     elif [ "$1" = "-b" ]; then
        shift
        BLACKBOX=0
    elif [ "$1" = "-N" ]; then
        shift
        NAVDATA=1
     elif [ "$1" = "-n" ]; then
        shift
        NAVDATA=0
   else
        echo "Unknown option"
        usage
        exit 1
    fi
done

if [ $USE_GDB -eq 1 ]; then
    PRE_CMD="gdbserver 1.1.1.1:10000"
fi

if [ $BLACKBOX -eq 1 ]
then
    [ ! -d ${DELOS_BLACKBOX_PATH} ] && mkdir -p ${DELOS_BLACKBOX_PATH}
    POST_CMD="${POST_CMD} -B"
fi

if [ $NAVDATA -eq 1 ]
then
    POST_CMD="${POST_CMD} -N"
fi

PROG_CMD="$PRE_CMD $PROG_BASE_DIR/$PROG $POST_CMD"

if [ $NO_CORE_DUMP -eq 0 ]; then
    source /bin/activate_coredump.sh
fi

# Start program... :
echo "Exec : $PROG_CMD" | logger -s -t "Dragon" -p user.info
if [ $OUT2NULL -eq 1 ]; then
    echo "(output send to /dev/null)" | logger -s -t "Dragon" -p user.info
    $PROG_CMD >/dev/null 2>/dev/null
    PROG_RESULT=$?
else
    $PROG_CMD
    PROG_RESULT=$?
fi

test-SIP6_pwm -S 3 0 0 0 0
gpio_out MOTOR_FAULT 1

#red light on
#green light off
led_set red both 1
led_set green both 0

# Make sure all data produced by Dragon are written
echo "Flushing filesystems..."
sync; echo "3" > /proc/sys/vm/drop_caches
echo " flush done."

echo ""
echo "dragon-prog is dead!" | logger -s -t "Dragon" -p user.notice
echo "Date is: $(date -R)" | logger -s -t "Dragon" -p user.notice

echo ""
echo "############################"
echo "### Dragon returned = $PROG_RESULT"
echo "Dragon returned = $PROG_RESULT"| logger -t "Dragon" -p user.notice
echo "############################"
echo ""
exit $PROG_RESULT

