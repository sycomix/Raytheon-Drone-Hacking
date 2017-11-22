#!/bin/sh

source /bin/updater/updater_common.sh
source /bin/demo_global.sh

# check for demos update
if [ -f ${1}/${DEMO_FILENAME} ] ; then
    # demo file found
    echo "DEMO : copying ${1}/${DEMO_FILENAME} to ${DEMO_LOCAL_PATH}"
    cp -f ${1}/${DEMO_FILENAME} ${DEMO_LOCAL_PATH}
    sync
fi

if [ -f ${UPDATE_STATUS_FILE} ] ; then
    echo "UPDATE : ${UPDATE_STATUS_FILE} found."
    echo "End updating"

else
    # find UPDATE_USB_PLF_NAME (..._usb_update.plf)
    FILES=`ls ${1}/*.plf`
    for FILE in ${FILES}; do
        if [ ${FILE} == ${1}/${UPDATE_USB_PLF_NAME} ]; then
            echo "match ${FILE}"
            touch ${UPDATE_PROCESSING}
            cp ${FILE} ${UPDATE_PLF_FILE}
            sync
            /bin/updater/updater_process.sh --force
        fi
    done

    # if not, scan all plfs
    [ -x /usr/bin/ldc ] && ldc set_pattern update_step_1 true
    /bin/updater/updater_scan.sh ${1} cp
    /bin/updater/updater_process.sh
fi

exit 0

