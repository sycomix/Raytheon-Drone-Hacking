#! /bin/sh
source /bin/delos_shell.sh

infos="/proc/uptime /proc/loadavg /proc/pagetypeinfo /proc/vmallocinfo /proc/zoneinfo /proc/stat /proc/meminfo"

for inf in ${infos}
do
  if [ ! -f ${inf} ]
  then
    echo "information (${inf}) is not available."
    exit 1
  fi
done

mydir="$DELOS_DEBUG_CUR_DIR/meminfo"
[ ! -d ${mydir} ] && mkdir -p ${mydir}
if [ ! -d ${mydir} ]
then
  echo "meminfo directory (${mydir}) is not available."
  exit 1
fi

def_sleep="20"
sleep=${def_sleep}

O=$(getopt -- s:h ``$@'') || exit 1
eval set -- "$O"
while true
do case "$1" in
    -s)  sleep="$2";shift 2;;
    --)  shift;break;;
    -h)
      printf "Usage: $0 [options]\n" >&2
      printf "\t-s <sleep time(seconds)> [default: %s]\n" ${def_iface} >&2
      exit 1;;
    esac
done

counter_file="${mydir}/counter"

echo "meminfo collection started" | logger -s -t "Debug" -p user.info

(
while true
do
  [ ! -f ${counter_file} ] && echo "0" > ${counter_file}
  counter=$(cat ${counter_file})
  fichier="${mydir}/meminfo-$counter.log.gz"
  [ -f ${fichier} ] && mv ${fichier} ${fichier}.old
  (
    echo "######## Process/Threads"
    ps -T
    echo "######## Opened files"
    lsof
    for inf in ${infos}
    do
      echo "######## ${inf}"
      cat ${inf}
    done
  )| gzip -c > ${fichier}
  counter=$(( counter+1 ))
  echo ${counter} > ${counter_file}
  sleep ${sleep}
done
)&
