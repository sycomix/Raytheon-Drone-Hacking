#!/bin/sh

PROD_INFO_FILE="/factory/production_info.xml"

echo "$0 : Write Parameters"

echo "$0 : Enable volatile access"
i2c_cmd 0x1c 0x40 0x41 2>&1 | grep -i "error"

echo "$0 : Disabling charge"
i2c_cmd 0x1c 0x14 0x92 2>&1 | grep -i "error"

i2c_cmd 0x1c 0x00 0x0e 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x01 0x01 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x02 0x70 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x04 0x18 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x05 0x51 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x06 0x00 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x07 0x00 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x08 0x00 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x09 0x00 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x0A 0x00 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x0b 0x00 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x0c 0x1f 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x0d 0x04 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x0e 0x04 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x0f 0x40 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x10 0x58 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x11 0xa1 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x12 0x44 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x13 0x01 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x15 0x30 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x16 0x00 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x17 0x08 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x18 0x40 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x19 0x16 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x1A 0x5f 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x1d 0xc0 2>&1 | grep -i "error"
i2c_cmd 0x1c 0x1e 0xa3 2>&1 | grep -i "error"
#i2c_cmd 0x1c 0x1f 0x38 2>&1 | grep -i "error" #Read-Only parameter

if [ -f ${PROD_INFO_FILE} ];then
    PI_NUMBER=$(cat ${PROD_INFO_FILE} | grep PI | cut -d '"' -f 2)
    PI_TYPE=${PI_NUMBER:8:2}

    if [ ${PI_TYPE} == "D1" ] || [ ${PI_TYPE} == "D2" ] || [ ${PI_TYPE} == "P3" ];then
        echo "$0 : Drone DV"
        i2c_cmd 0x1c 0x03 0xd0 2>&1 | grep -i "error"
        i2c_cmd 0x1c 0x1b 0x88 2>&1 | grep -i "error"
        i2c_cmd 0x1c 0x1c 0x9e 2>&1 | grep -i "error"

    else
        echo "$0 : Drone MP"
        i2c_cmd 0x1c 0x03 0xe0 2>&1 | grep -i "error"
        i2c_cmd 0x1c 0x1b 0x12 2>&1 | grep -i "error"
        i2c_cmd 0x1c 0x1c 0x91 2>&1 | grep -i "error"
    fi
else
    i2c_cmd 0x1c 0x03 0xe0 2>&1 | grep -i "error"
    i2c_cmd 0x1c 0x1b 0x12 2>&1 | grep -i "error"
    i2c_cmd 0x1c 0x1c 0x91 2>&1 | grep -i "error"
fi

echo "$0 : Re-Enabling charge"
i2c_cmd 0x1c 0x14 0xd2 2>&1 | grep -i "error"

echo "$0 : Disable volatile access"
i2c_cmd 0x1c 0x40 0x0 2>&1 | grep -i "error"
