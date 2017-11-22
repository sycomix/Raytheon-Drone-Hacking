#!/bin/sh

#CALL ME WHEN USB IS UNPLUGGED !!!

source dragon_shell.sh
DRAGONSHELL_showScriptName

CHARGER_I2C_ADDR=0x1c

REG_INPUT_CURRENT_LIMIT=0x0c
REG_INPUT_CURRENT_LIMIT_RESET_MASK=0x1f
REG_AICL_ENABLE=0x0d
REG_AICL_ENABLE_MASK=0x04
REG_APSD_USED=0x41
REG_APSD_USED_RESULT_MASK=0xf8

enable_volatile_access()
{
    i2c_cmd 0x1c 0x40 0x41
}

disable_volatile_access()
{
    i2c_cmd 0x1c 0x40 0x0
}

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

# Enable volatile access
enable_volatile_access

# Write input current limit
write_i2c_charger_reg "${REG_INPUT_CURRENT_LIMIT}" "$(( 0x$(read_i2c_charger_reg "${REG_INPUT_CURRENT_LIMIT}") | ${REG_INPUT_CURRENT_LIMIT_RESET_MASK} ))"

# Enable AICL
write_i2c_charger_reg "${REG_AICL_ENABLE}" "$(( 0x$(read_i2c_charger_reg "${REG_AICL_ENABLE}") | ${REG_AICL_ENABLE_MASK} ))"

# Reset APSD
write_i2c_charger_reg "${REG_APSD_USED}" "$(( 0x$(read_i2c_charger_reg "${REG_APSD_USED}") & ${REG_APSD_USED_RESULT_MASK} ))"

# Disable volatile access
disable_volatile_access
