#!/bin/sh
# source this script to activate coredump
# source /usr/bin/activate_coredump.sh
source /bin/delos_shell.sh

echo "Activate coredump..." | logger -s -t "Debug" -p user.info

coredir="${DELOS_CORES_PATH}"

if [ -d ${coredir} ];then
    corewritter="/usr/bin/delos_cores"
    core_size_limit=$(/bin/df -P /dev/loop1 | tail -1 | awk '{printf ("%d\n",$4*0.8)}')
    maxmax_limit=8192

    if [ ${core_size_limit} -gt ${maxmax_limit} ]; then
        core_size_limit=${maxmax_limit}
    fi

    if [ -e ${corewritter} ]; then
        echo "|${corewritter} ${coredir}/%e.%p" > /proc/sys/kernel/core_pattern ${core_size_limit} | logger -s -t "Debug" -p user.info
    else
        echo "${coredir}/%e.%p" > /proc/sys/kernel/core_pattern | logger -s -t "Debug" -p user.info
    fi

    echo "Core pattern: $(cat /proc/sys/kernel/core_pattern)" | logger -s -t "Debug" -p user.info
    ulimit -c ${core_size_limit}

    ulimit -a | grep core
else
    echo "Delos cores path ${coredir} doesn't exist, cores not enable!" | logger -s -t "Debug" -p user.error
fi
#no exit because this script has to be sourced
