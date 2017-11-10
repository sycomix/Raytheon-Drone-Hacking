#!/bin/sh

source /bin/updater/updater_common.sh
source /bin/dragon_shell.sh

# Make sure the configuration script was parsed
if [ "${UPDATER_COMMON_INCLUDED}" != "UPDATER_COMMON_SUCCESSFULLY_INCLUDED" ]; then
  echo "Could not parse updater configuration file - exiting"; exit;
fi

# Update a boot counter to get nice logs
touch ${UPDATE_BOOTCOUNT}
BOOTCOUNT=$(cat ${UPDATE_BOOTCOUNT})
BOOTCOUNT=$((${BOOTCOUNT}+1))
echo ${BOOTCOUNT} > ${UPDATE_BOOTCOUNT}

# List of CheckPLF return codes:
#  CHECKPLF_PLF_NEWER
#  CHECKPLF_SAME_VERSION
#  CHECKPLF_PLF_OLDER
#  CHECKPLF_ERR=INVALID_PLF_FORMAT
#  CHECKPLF_ERR=INVALID_FILE
#  CHECKPLF_ERR=INVALID_FILE_NAME

# List of Update process status
# UPDT_REFLASH_TRIGGERED


# Welcome message
UPDT_SAY "Checking if update is necessary ..."


# If no PLF file is present, there is nothing to do
if [ ! -e ${UPDATE_PLF_FILE} ] ; then
	UPDT_SAY " no update file (${UPDATE_PLF_FILE}) - cleaning ${UPDATE_DIR}"
	# Get rid of old logs
	#rm ${UPDATE_LOG}
	UPDT_CLEAN_AND_EXIT
	## CONTINUE NORMAL BOOT & START DRONE SOFTWARE ##
fi


# A PLF file is present
UPDT_LOG " PLF file found : ${UPDATE_PLF_FILE}"
touch "${UPDATE_PROCESSING}"

# Get the current firmware version
# Update process must not block if the version file is corrupt
if [ -e ${VERSION_PATH} ]; then
	VERSION=`cat $VERSION_PATH`
	UPDT_LOG " Current version is ${VERSION}"
else
	UPDT_LOG " Failed to get current version - forcing update"
fi


# Look for the required update tools
CHECKPLF_CMD=$(which checkplf)
if [ "${CHECKPLF_CMD}" == "" ] ; then
	UPDT_LOG " Could not find 'checkplf' command. Searching for an alternative ..."
	CHECKPLF_CMD=$(find / -name "checkplf") | head -n 1
	if [ "${CHECKPLF_CMD}" == "" ]; then
		UPDT_LOG " Could not find 'checkplf' command anywhere. Aborting update."
		UPDT_CLEAN_AND_EXIT
	fi
fi



# Check if an update is already in progress
# ie. this script already triggered the Parrot Installer tool,
# the drone rebooted the drone with (case 1) the new firmware installed or with (case 2) the previous firmware
# We must determine which case happened.
# This test prevents infinite reboots.

# Verify the PLF file
PLF_VERSION=$(${CHECKPLF_CMD} ${UPDATE_PLF_FILE})
PLF_STATUS=$(${CHECKPLF_CMD} ${UPDATE_PLF_FILE} ${VERSION})

if [ -e ${UPDATE_STATUS_FILE} ] ; then

	UPDT_LOG " Status file found, an update is about to finish - checking result".

	UPDATE_STATUS=$(cat ${UPDATE_STATUS_FILE})

	if [ "${UPDATE_STATUS}" == "UPDT_REFLASH_TRIGGERED" ] ; then

		if [ "${PLF_STATUS}" == "CHECKPLF_SAME_VERSION" ] ; then
			UPDT_LOG " Update success to version ${VERSION}".
			UPDT_EXECUTE_SCRIPT ${UPDATE_SH_SUCCESS}
			UPDT_CLEAN_AND_EXIT
		else
			# An update was already in progress
			# and the PLF file is still newer than the current firmware
			# This means that the update that was in progress failed.
			UPDT_LOG " Update failed (version file is still older than the PLF file)".
			UPDT_EXECUTE_SCRIPT ${UPDATE_SH_FAILURE}
			UPDT_CLEAN_AND_EXIT
		fi
	else
	        UPDT_LOG " Update log found but unknown state - exiting"
	        UPDT_CLEAN_AND_EXIT
	fi
fi

UPDT_LOG "No status file found, proceeding with update"

# Start a whole new update process

# Get rid of old logs
rm ${UPDATE_LOG}

UPDT_LOG " Current version is ${VERSION} - PLF version is ${PLF_VERSION}"

# Stop if PLF is invalid
if [ -n "$(echo ${PLF_STATUS} | egrep '(ERR=|INVALID)')" ]; then
	UPDT_LOG " Update failed - invalid PLF file".
	UPDT_CLEAN_AND_EXIT
fi

# Stop if PLF is older and downgrading to this specific version is not allowed
if [ "$1" != "--force" -a "${PLF_STATUS}" == "CHECKPLF_PLF_OLDER" ]; then
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
		fi
	else
		UPDT_LOG " no downgrade whitelist found (${WHITELIST_FILE})"
	fi

	if [ "${DOWNGRADE_ALLOWED}" != "true" ]; then
		UPDT_LOG " Update ignored - PLF file is older"
		UPDT_CLEAN_AND_EXIT
	fi
fi

#
# From this point, the PLF is valid and updating is allowed
#
UPDT_LOG " Starting update from version ${VERSION} to new version "

# Do some product specific backup stuff
UPDT_EXECUTE_SCRIPT ${UPDATE_SH_PROLOG}
# Save hostapd wifi network config
#cp /etc/hostapd.conf $UPDATE_DIR

echo "UPDATING ..." > $NO_START_PROG_FILE
DRAGONSHELL_stopNkill_dragon

# Look for pinst_trigger
TRIGGER_CMD=$(which pinst_trigger)
if [ "${TRIGGER_CMD}" == "" ]; then
	UPDT_LOG " Could not find 'pinst_trigger' command. Searching for an alternative ..."
	TRIGGER_CMD=$(find / -name "pinst_trigger" | head -n 1)
	if [ "${TRIGGER_CMD}" == "" ]; then
		UPDT_LOG " Could not find 'pinst_trigger' command anywhere. Aborting update."
		UPDT_CLEAN_AND_EXIT
	fi
	UPDT_LOG "  Using pinst_trigger alternative '${TRIGGER_CMD}'"
	# The 'which' command above could have failed because of a missing permission
	chmod +x ${TRIGGER_CMD}
fi

# Write a flag preventing rebooting indefinitely
echo "UPDT_REFLASH_TRIGGERED" > ${UPDATE_STATUS_FILE}
if [ ! -f ${UPDATE_STATUS_FILE} -o "$(cat ${UPDATE_STATUS_FILE})" != "UPDT_REFLASH_TRIGGERED" ]; then
	UPDT_LOG "Could not read back status file - exiting"
	UPDT_CLEAN_AND_EXIT
fi

# Stop here during dev tests
if [ "${1}" == "--dry-run" ]; then
	UPDT_SAY "Dry run mode; would have called pinst_trigger and reboot"
	UPDT_CLEAN_AND_EXIT
fi

# Mark a flag in NAND telling the bootloader to start the updater
# instead of the regular firmware at next system boot
UPDT_LOG " Calling pinst_trigger "
${TRIGGER_CMD}
RES=$?
until [ ${RES} -eq 0 ]; do
	UPDT_SAY "pinst_trigger didn't work... Wait 5 seconds to retry"
	sleep 5
	${TRIGGER_CMD}
	RES=$?
done

UPDT_LOG "Rebooting..."
# On most products, reboot will be redirected to a script which shuts down all programs nicely
UPDT_EXECUTE_SCRIPT ${UPDATE_SH_REBOOT}
sleep 10
UPDT_SAY "No ${UPDATE_SH_REBOOT} found. Reboot"

# If it takes too long, we call the actual Busybox reboot command.
unalias reboot
reboot

UPDT_SAY "You should probably not see this."

###
