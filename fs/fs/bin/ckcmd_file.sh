#!/bin/sh

source /bin/delos_shell.sh

[ ! -d ${DELOS_MOUNT_PATH} ] && exit 1

killall -9 ckcmd 2>/dev/null

CKCM_DIR=${DELOS_DEBUG_CUR_DIR}/ckcm
mkdir -p $CKCM_DIR

CKCM_FILE=${CKCM_DIR}/ckcm.bin
echo "CKCM traces go into file $CKCM_FILE" | logger -s -t "Debug" -p user.info
ckcmd -F $CKCM_FILE -P 23001 &

# No need for redirect anymore... dragon-prog does it directly !
#/bin/ckcmd_redirect.sh

exit 0
