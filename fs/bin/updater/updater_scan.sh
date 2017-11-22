#!/bin/sh

source /bin/updater/updater_common.sh

if [ ! -d "$1" ]; then UPDT_SAY "Usage: $0 <path to scan>"; exit; fi

MV_CMD="mv"
if [ $# -eq 2 ]; then
    MV_CMD=${2}
fi

UPDT_LOG "Scanning ${1} for updates ..."


if [ -f ${UPDATE_STATUS_FILE} ]; then UPDT_SAY "Update already in progress, aborting scan"; exit; fi

touch /tmp/.updater.scanning

UPDT_LOG " searching PLF file named *.plf..."
PLFs=$(find $1 -type f -maxdepth 1 -name "*.plf")

if [ -n "${PLFs}" ]; then UPDT_EXECUTE_SCRIPT /bin/updater/updater_scanplffound.sh; fi

for PLF in ${PLFs}; do
    UPDT_LOG "Testing ${PLF}"
    VERIF=$(checkplf ${PLF} $(cat ${VERSION_PATH}))
    PLF_VERSION=$(checkplf ${PLF})

    if [ "${VERIF}" == "CHECKPLF_PLF_OLDER" ]; then
        # Check the downgrade whitelist
        WHITELIST_FILE=/bin/updater/dgwl.txt
        DOWNGRADE_ALLOWED="false"
        if [ -f ${WHITELIST_FILE} ]; then
            UPDT_LOG " Checking the downgrading whitelist ${WHITELIST_FILE}..."
            UPDT_LOG "   whitelist: $(cat ${WHITELIST_FILE})"
            WHITELIST_SEARCH=$(echo "${PLF_VERSION}" | grep -oxf ${WHITELIST_FILE})
            UPDT_LOG "   search result: ${WHITELIST_SEARCH}"
            if [ -n "${WHITELIST_SEARCH}" ]; then
                UPDT_LOG " downgrading allowed by whitelist"
                DOWNGRADE_ALLOWED="true"
                # Old firmwares are allowed to overwrite themselves.
                #  To prevent infinite updates, delete the PLF file once used.
                MV_CMD="mv"
            fi
        else
            UPDT_LOG " no downgrade whitelist found (${WHITELIST_FILE})"
        fi
    fi

    if [ "${VERIF}" == "CHECKPLF_PLF_NEWER" -o "${DOWNGRADE_ALLOWED}" == "true" ];  then
        UPDT_LOG "Sending ${PLF} to the Update partition";
        [ -x /usr/bin/ldc ] && ldc set_pattern update_step_2 true
        touch ${UPDATE_PROCESSING}
        UPDT_LOG "Move command is <${MV_CMD}>";
        ${MV_CMD} ${PLF} ${UPDATE_PLF_FILE}.tmp;
        sync;
        mv ${UPDATE_PLF_FILE}.tmp ${UPDATE_PLF_FILE} && sync;
        [ -x /usr/bin/ldc ] && ldc set_pattern color_wheel false
    elif [ "${VERIF}" == "CHECKPLF_ERR=INVALID_PLF_FORMAT" ]; then
        UPDT_LOG "Deleting corrupt ${PLF}";
        rm ${PLF}; sync;
    else
        UPDT_LOG "Skipping ${PLF}";
        #rm ${PLF}; sync
    fi
done

rm /tmp/.updater.scanning
