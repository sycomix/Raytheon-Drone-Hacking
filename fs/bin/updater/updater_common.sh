#!/bin/sh

PRODUCT_NAME=$(cat /bin/updater/productname)

# Path to the UBI-stored directory where the PLF to be flashed will be stored
UPDATE_PLF_DIR=/update
# Path to the update scripts (read only)
UPDATE_SH_DIR=/bin/updater
# Script called just before the update
UPDATE_SH_PROLOG=/bin/updater/updater_prolog.sh
# Script called for reboot
UPDATE_SH_REBOOT=/bin/reboot.sh
# Script called after the update
# (note : updater_prolog and updater_success belong to 2 different versions and must not be too correlated)
UPDATE_SH_SUCCESS=/bin/updater/updater_success.sh
UPDATE_SH_FAILURE=/bin/updater/updater_failure.sh

# Path to the update log file (rw)
UPDATE_LOG_DIR=/data/updater
UPDATE_LOG=${UPDATE_LOG_DIR}/updater.log
UPDATE_BOOTCOUNT=${UPDATE_LOG_DIR}/updater_bootcount.log

# Filename of the PLF file to flash
UPDATE_PLF_NAME=${PRODUCT_NAME}_update.plf
UPDATE_USB_PLF_NAME=${PRODUCT_NAME}_usb_update.plf
# Full path of the PLF file
UPDATE_PLF_FILE=${UPDATE_PLF_DIR}/${UPDATE_PLF_NAME}

#Log file
UPDATE_STATUS_FILE=${UPDATE_PLF_DIR}/err.log
UPDATE_PROCESSING=/tmp/update_processing

VERSION_PATH=/version.txt

# Pipe to launch scans and updates
UPIPE=/tmp/.update

UPDT_SAY()
{
    echo -ne "\033[33m"
    echo "[FIRMWARE UPDATER] Boot #`cat ${UPDATE_BOOTCOUNT}` : $1"
    echo -ne "\033[0m"
}

# Print debug message and store a copy in updater log and UART console
UPDT_LOG()
{
    UPDT_SAY "$1"
    echo "[FIRMWARE UPDATER] Boot #`cat ${UPDATE_BOOTCOUNT}` : $1" | tee -a ${UPDATE_LOG} > /dev/console
    sync
}

UPDT_CLEAN_AND_EXIT()
{
    if [ "${UPDATE_PLF_DIR}" != "" ]; then
        (
        UPDT_SAY "wait 10 sec before cleaning ${UPDATE_PLF_DIR}"
        sleep 10
        if [ -f "${UPDATE_PROCESSING}" ]; then
            UPDT_SAY "clean nothing since another process is using update"
        else
            UPDT_SAY "clean ${UPDATE_PLF_DIR}"
            find ${UPDATE_PLF_DIR} ! -name "*.plf.tmp" -a ! -name "md5_check.md5" -a ! -name "U_*.txt" -type f -exec rm {} \;
            find ${UPDATE_PLF_DIR} -type d -mindepth 1 -exec rmdir {} \;
        fi
        )&
    fi
    # Leave a copy of the current firmware version in the FTP directory for FreeFlight
    cp ${VERSION_PATH} ${UPDATE_PLF_DIR}
    rm -fv ${UPDATE_PROCESSING}
    sync
    exit
}

UPDT_CLEAN()
{
    UPDT_SAY "clean ${UPDATE_PLF_DIR}"
    find ${UPDATE_PLF_DIR} ! -name "*.plf.tmp" -a ! -name "md5_check.md5" -a ! -name "U_*.txt" -type f -exec rm {} \;
    find ${UPDATE_PLF_DIR} -type d -mindepth 1 -exec rmdir {} \;
    # Leave a copy of the current firmware version in the FTP directory for FreeFlight
    cp ${VERSION_PATH} ${UPDATE_PLF_DIR}
    rm ${UPDATE_PLF_DIR}/* -rf
    sync
}

UPDT_EXECUTE_SCRIPT()
{
    if [ -f "${1}" ]; then
        UPDT_LOG "Executing script <${1}>"
        # Make sure exec bit is set
        chmod +x ${1}
        source ${1} &
    fi
}

UPDT_TRY_SCAN()
{
    if [ -p "${UPIPE}" ]; then
        echo "${1}" > "${UPIPE}" &
    fi
}

# Prepare the environment
mkdir -p ${UPDATE_LOG_DIR}

# Export a dummy variable indicating that this script was parsed
UPDATER_COMMON_INCLUDED=UPDATER_COMMON_SUCCESSFULLY_INCLUDED
