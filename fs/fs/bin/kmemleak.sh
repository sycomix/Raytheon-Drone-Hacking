#! /bin/sh
source /bin/delos_shell.sh

infos="/sys/kernel/debug/kmemleak"

if [ ! -f ${infos} ]
then
  echo "Kmemleak (${infos}) is not available."
  exit 1
fi

mydir="$DELOS_DEBUG_CUR_DIR/kmemleak"
[ ! -d ${mydir} ] && mkdir -p ${mydir}
if [ ! -d ${mydir} ]
then
  echo "Kmemleak directory (${mydir}) is not available."
  exit 1
fi

def_sleep="60"
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

echo "kmemleak collection started" | logger -s -t "Debug" -p user.info

(
while true
do
  [ ! -f ${counter_file} ] && echo "0" > ${counter_file}
  counter=$(cat ${counter_file})
  fichier=$(printf "${mydir}/kmemleak-%06d.log.gz" ${counter} )
  [ -f ${fichier} ] && mv ${fichier} ${fichier}.old
  echo "scan" > ${infos}
  cat ${infos} | gzip -c > ${fichier}
  echo "clear" > ${infos}
  counter=$(( counter+1 ))
  echo ${counter} > ${counter_file}
  sleep ${sleep}
done
)&
