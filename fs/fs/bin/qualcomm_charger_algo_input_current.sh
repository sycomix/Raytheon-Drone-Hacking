#!/bin/sh

#CALL ME WHEN USB IS PLUGGED !!!

source dragon_shell.sh
DRAGONSHELL_showScriptName
name="$(basename $0)"

CHARGER_I2C_ADDR=0x1c

AICL_RESULT_FILE="/data/lastChargeIntensity.txt"
LAST_CHARGE_RATE_VALUE_FILE="/data/lastChargeRate.txt"
SLOW_LIMIT_VALUE=0x04 # 500mA
FAST_LIMIT_VALUE=0x11 # 1600mA

REG_SOURCE_DETECTED=0x4b
REG_SOURCE_DETECTED_SDP_MASK=0x10 # PC : USB classic
REG_SOURCE_DETECTED_CDP_MASK=0x80 # PC : USB thunderbolt
REG_INPUT_CURRENT_LIMIT=0x0c
REG_INPUT_CURRENT_LIMIT_READ_MASK=0x1f
REG_INPUT_CURRENT_LIMIT_MASK=0xe0
REG_AICL_STATUS=0x53
REG_AICL_STATUS_MASK=0x10
REG_AICL_RESULT=0x46
REG_AICL_RESULT_MASK=0x1f
REG_AICL_ENABLE=0x0d
REG_AICL_DISABLE_MASK=0xfb
REG_DCD_TIMEOUT=0x4c
REG_DCD_TIMEOUT_MASK=0x80
REG_APSD=0x11
REG_APSD_MASK=0xfe
REG_APSD_ENABLE_MASK=0x01
REG_APSD_DISABLE_MASK=0x00
REG_INPUT_VOLTAGE_9V_MASK=0x60
REG_INPUT_VOLTAGE_5V_MASK=0x9f
REG_APSD_USED=0x41
REG_APSD_USED_RESULT_MASK=0xf8
REG_APSD_USED_HIGHCURRENT_MASK=0x05
REG_CHARGE_STATUS=0x4A
REG_CHARGE_STATUS_CV_MASK=0x06

read_i2c_charger_reg()
{
    _charger_reg=$(echo $1)
    _tmp=$(i2c_cmd ${CHARGER_I2C_ADDR} ${_charger_reg} | grep -i -E "reading|error")
    _tmp=${_tmp#*: }

    echo ${_tmp}
}

write_i2c_charger_reg()
{
    _charger_reg=$(echo $1)
    _value_to_write=$(echo $2)

    i2c_cmd ${CHARGER_I2C_ADDR} ${_charger_reg} ${_value_to_write}
}

enable_volatile_access()
{
    i2c_cmd 0x1c 0x40 0x41
}

disable_volatile_access()
{
    i2c_cmd 0x1c 0x40 0x0
}

# Wait the end of USB plugging process
sleep 3

# SDP Charger
if [ $(( 0x$(read_i2c_charger_reg "${REG_SOURCE_DETECTED}") & ${REG_SOURCE_DETECTED_SDP_MASK} )) -eq 16 ];then

    echo "SDP charger detected, charging with 500mA" | logger -s -t ${name} -p user.info

    # Detection of slow USB insertion
    if [ $(( 0x$(read_i2c_charger_reg "${REG_DCD_TIMEOUT}") & ${REG_DCD_TIMEOUT_MASK} )) -eq 128 ];then

        echo "Slow insertion" | logger -s -t ${name} -p user.info

        # Enable volatile access
        enable_volatile_access

        # Disable APSD (Enumeration)
        write_i2c_charger_reg "${REG_APSD}" "$(( 0x$(read_i2c_charger_reg "${REG_APSD}") & ${REG_APSD_DISABLE_MASK} ))"

        # Change the allowed input voltage to be “9V only”
        _REG_VAL=$(( $(( 0x$(read_i2c_charger_reg "${REG_INPUT_CURRENT_LIMIT}") & ${REG_INPUT_CURRENT_LIMIT_READ_MASK})) | ${REG_INPUT_VOLTAGE_9V_MASK} ))

        write_i2c_charger_reg "${REG_INPUT_CURRENT_LIMIT}" ${_REG_VAL}

        # Wait 20ms
        usleep 20000

        # Enable APSD
        _REG_VAL=$(( $(( 0x$(read_i2c_charger_reg "${REG_APSD}") & ${REG_APSD_MASK})) | ${REG_APSD_ENABLE_MASK} ))

        write_i2c_charger_reg "${REG_APSD}" ${_REG_VAL}

        # Change the allowed input voltage to be  “5V only”
        write_i2c_charger_reg "${REG_INPUT_CURRENT_LIMIT}" "$(( 0x$(read_i2c_charger_reg "${REG_INPUT_CURRENT_LIMIT}") & ${REG_INPUT_VOLTAGE_5V_MASK} ))"

        # Disable volatile access
        disable_volatile_access

        # Wait 1s
        sleep 1

        if [ $(( 0x$(read_i2c_charger_reg "${REG_SOURCE_DETECTED}") & ${REG_SOURCE_DETECTED_SDP_MASK} )) -eq 16 ] && [ $(( 0x$(read_i2c_charger_reg "${REG_DCD_TIMEOUT}") & ${REG_DCD_TIMEOUT_MASK} )) -eq 128 ];then

            echo "Fake SDP : floating charger"  | logger -s -t ${name} -p user.info

            # Force high current mode
            _REG_VAL=$(( $(( 0x$(read_i2c_charger_reg "${REG_APSD_USED}") & ${REG_APSD_USED_RESULT_MASK})) | ${REG_APSD_USED_HIGHCURRENT_MASK} ))

            write_i2c_charger_reg "${REG_APSD_USED}" ${_REG_VAL}

            exit 0

        else
            echo "SDP or CDP : charging with APSD result"  | logger -s -t ${name} -p user.info

            # Set limit input current with APSD result
            write_i2c_charger_reg "${REG_APSD_USED}" "$(( 0x$(read_i2c_charger_reg "${REG_APSD_USED}") & ${REG_APSD_USED_RESULT_MASK} ))"
            exit 0
        fi
    fi

    # Set the max input current to 500mA
    _INPUT_CURRENT_VAL=4

# CDP Charger
elif [ $(( 0x$(read_i2c_charger_reg "${REG_SOURCE_DETECTED}") & ${REG_SOURCE_DETECTED_CDP_MASK} )) -eq 128 ];then

    echo "CDP charger detected, charging with 1500mA" | logger -s -t ${name} -p user.info

    # Set the max input current to 1500mA
    _INPUT_CURRENT_VAL=16

else
    # Check if AICL is done
    if [ $(( 0x$(read_i2c_charger_reg "${REG_AICL_STATUS}") & ${REG_AICL_STATUS_MASK} )) -eq 16 ];then

        echo "Charger detected, charging" | logger -s -t ${name} -p user.info

        # Read AICL result
        _INPUT_CURRENT_VAL=$(( $(( 0x$(read_i2c_charger_reg "${REG_AICL_RESULT}") & ${REG_AICL_RESULT_MASK})) ))

    else
        echo "AICL is not finished, wait 1s" | logger -s -t ${name} -p user.info
        sleep 1

        # Check if AICL is done
        if [ $(( 0x$(read_i2c_charger_reg "${REG_AICL_STATUS}") & ${REG_AICL_STATUS_MASK} )) -eq 16 ];then

            # Read AICL result
            _INPUT_CURRENT_VAL=$(( $(( 0x$(read_i2c_charger_reg "${REG_AICL_RESULT}") & ${REG_AICL_RESULT_MASK})) ))

        else
            echo "ERROR : AICL is still not finished, exiting" | logger -s -t ${name} -p user.err
            exit 0
        fi
    fi
fi

if [ $(( 0x$(read_i2c_charger_reg "${REG_SOURCE_DETECTED}") & ${REG_SOURCE_DETECTED_CDP_MASK} )) -eq 128 ] || [ $(( 0x$(read_i2c_charger_reg "${REG_SOURCE_DETECTED}") & ${REG_SOURCE_DETECTED_SDP_MASK} )) -eq 16 ];then
    # Save AICL result in filesystem
    echo -n ${_INPUT_CURRENT_VAL} > ${AICL_RESULT_FILE}
else
    if [ $(( 0x$(read_i2c_charger_reg "${REG_CHARGE_STATUS}") & ${REG_CHARGE_STATUS_CV_MASK} )) -ne 6 ] && [ $(( 0x$(read_i2c_charger_reg "${REG_CHARGE_STATUS}") & ${REG_CHARGE_STATUS_CV_MASK} )) -ne 0 ] ;then
        echo -n ${_INPUT_CURRENT_VAL} > ${AICL_RESULT_FILE}
    else
        echo "CV phase and other charger type => No update of charger datas" | logger -s -t ${name} -p user.info
    fi
fi

# Bridle max input current value at 1600mA
if [ $((_INPUT_CURRENT_VAL)) -gt $((FAST_LIMIT_VALUE)) ];then
    _INPUT_CURRENT_VAL=${FAST_LIMIT_VALUE}
fi

# Enable volatile access
enable_volatile_access

# Write input current limit
write_i2c_charger_reg "${REG_INPUT_CURRENT_LIMIT}" ${_INPUT_CURRENT_VAL}

# Disable AICL
write_i2c_charger_reg "${REG_AICL_ENABLE}" "$(( 0x$(read_i2c_charger_reg "${REG_AICL_ENABLE}") & ${REG_AICL_DISABLE_MASK} ))"

# Disable volatile access
disable_volatile_access

#Set last charger  value
if [ $((_INPUT_CURRENT_VAL)) -ge $((FAST_LIMIT_VALUE)) ];then
    CHARGE_MODE="fast"
elif [ $((_INPUT_CURRENT_VAL)) -lt $((FAST_LIMIT_VALUE)) -a $((_INPUT_CURRENT_VAL)) -gt $((SLOW_LIMIT_VALUE)) ];then
    CHARGE_MODE="moderate"
else
    CHARGE_MODE="slow"
fi

if [ $(( 0x$(read_i2c_charger_reg "${REG_SOURCE_DETECTED}") & ${REG_SOURCE_DETECTED_CDP_MASK} )) -eq 128 ] || [ $(( 0x$(read_i2c_charger_reg "${REG_SOURCE_DETECTED}") & ${REG_SOURCE_DETECTED_SDP_MASK} )) -eq 16 ];then
        echo -n ${CHARGE_MODE} > ${LAST_CHARGE_RATE_VALUE_FILE}
else
    if [ $(( 0x$(read_i2c_charger_reg "${REG_CHARGE_STATUS}") & ${REG_CHARGE_STATUS_CV_MASK} )) -ne 6 ] && [ $(( 0x$(read_i2c_charger_reg "${REG_CHARGE_STATUS}") & ${REG_CHARGE_STATUS_CV_MASK} )) -ne 0 ];then
        echo -n ${CHARGE_MODE} > ${LAST_CHARGE_RATE_VALUE_FILE}
    else
        echo "CV phase and other charger type => No update of charger datas" | logger -s -t ${name} -p user.info
    fi
fi
echo "Last charge mode: ${CHARGE_MODE}" | logger -s -t ${name} -p user.info
sync

