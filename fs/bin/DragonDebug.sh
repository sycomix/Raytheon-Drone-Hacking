#! /bin/sh

source /bin/delos_shell.sh
source /bin/debug_lib.sh

config="/etc/debug.conf"

/bin/df -P /dev/loop1 >/dev/null 2>/dev/null
ret=$?

if [ ${ret} -eq 0 ]
then
  if [ -f ${config} ]
  then
    echo "Create Debug repositories"
    DEBUG_CreateDir

    echo "Setting debug" | logger -s -t "Debug" -p user.info
    dmesg_level=1
    source ${config}
    dmesg -n ${dmesg_level}
    [ ${kmemleak} -eq 1 ] && /bin/kmemleak.sh
    [ ${meminfo} -eq 1 ] && /bin/meminfo.sh
    [ ${ckcmd} == "tcp" ] && /bin/ckcmd_tcp.sh
    [ ${ckcmd} == "file" ] && /bin/ckcmd_file.sh
    [ ${BLACKBOX} -eq 1 ] && mkdir -p $DELOS_BLACKBOX_PATH
    [ ${NO_CORE_DUMP} -eq 0 ] && mkdir -p ${DELOS_CORES_PATH}
  fi

  echo "Debug is set" | logger -s -t "Debug" -p user.info
else
  echo "Debug is not set, debug img disk not mounted" | logger -s -t "Debug" -p user.error
fi

exit 0
