#!/bin/sh

source /bin/delos_shell.sh

name=$(basename $0)
logger -s -t "$name" -p user.info "Enter $0"

FTP_PATH="/tmp/.bleproxy.ftpinprogress"
USRCON_PATH="/tmp/.shell.userconnected"
FLIGHT_PATH="/tmp/.bleproxy.flightinprogress"

SHUTDOWN_TIMEOUT=300
TIMER_STEP=10

is_exist()
{
    path=$1
    if [ ! -f $1 ];then
        return 0
    else
        return 1
    fi
}

is_noConnection()
{
    # Check if none of folowing file exist (return 1 if no file)
    is_exist $FTP_PATH
    FTP=$?
    is_exist  $FLIGHT_PATH
    FLIGHT=$?
    is_exist $USRCON_PATH
    USRCON=$?
    if [ $FTP == 0 -a $FLIGHT == 0 -a $USRCON == 0 ];then
        logger -s -t "$name" -p user.info "$FTP_PATH is $FTP, $FLIGHT_PATH is $FLIGHT $USRCON_PATH is $USRCON"
        return 1
    else
        return 0
    fi


}

# FreeFlight has 5 minutes to connect to the Delos before automatic shutdown
shutdown=$SHUTDOWN_TIMEOUT
while [ $shutdown -ge 0 ]
do

    sleep $TIMER_STEP
    is_noConnection
    noconn=$?
    if [ $noconn == 1 ];then
        shutdown=$(($shutdown-$TIMER_STEP))
        logger -s -t "$name" -p user.info "No connection from FreeFlight"
        logger -s -t "$name" -p user.info "Shutdown in $shutdown sec"


    else
        shutdown=$SHUTDOWN_TIMEOUT
    fi

done

logger -s -t "$name" -p user.info "No connection from FreeFlight, shutting down"
logger -s -t "$name" -p user.info "monitoring => shutdown"
/bin/delos_shutdown.sh
logger -s -t "$name" -p user.info "Exit $0"
