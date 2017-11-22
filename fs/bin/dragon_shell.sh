NO_START_PROG_FILE="/tmp/do_not_start_prog"

DRAGONSHELL_showScriptName()
{
    echo -e "\n\n\033[33m$(for i in $(seq 1 100); do echo -n "=";done)\n$0\n$(for i in $(seq 1 100); do echo -n "=";done)\033[0m"
}

DRAGONSHELL_kill_ifrunning()
{
    PID=$(ps | grep $1 | grep -v grep | sed -n '1p' | awk '{printf $1}')
    if [ "${PID}" != "" ]; then echo "Killing $1 (pid ${PID})"; kill -9 ${PID}; fi
}


DRAGONSHELL_checkNstart_dragon()
{
    if [ -f $NO_START_PROG_FILE ]; then
        (echo ""
        echo "##############"
        echo "Do not start prog because file $NO_START_PROG_FILE exists"
        echo "Reason:"
        cat $NO_START_PROG_FILE
        echo "##############"
        echo "" ) | logger -s -t ${name} -p user.info
    else
        # Debug management
        DragonDebug.sh

        # Start Program :
        DragonStarter.sh "$@" &
    fi
}


DRAGONSHELL_stopNkill_dragon()
{
    pipe="/tmp/.dragon-pipe-in"
    pipe_msg="dragon_shutdown"
    pid=$(pidof dragon-prog)
    if [ $? -eq 0 ]
    then
        # Send a message to Dragon for a clean stop
        echo "Asking Dragon to stop..." | logger -s -t "shutdown" -p user.info
        if [ -p $pipe ]
        then
            echo $pipe_msg > $pipe &
        fi
        i=0
        # Wait for Dragon to stop
        while kill -0 $pid 2> /dev/null; do
            if [ $i -gt 3 ]
            then
                echo "Timeout" | logger -s -t "shutdown" -p user.info
                break
            fi
            sleep 1
            i=$(($i+1))
        done
    fi
    # We timed out the clean stop. Kill Dragon.
    pid=$(pidof dragon-prog)
    if [ $? -eq 0 ]
    then
        killall -KILL dragon-prog
    fi
}

