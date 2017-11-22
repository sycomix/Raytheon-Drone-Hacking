#!/bin/sh



DELOS_USBDISKIMG_PATH="/data/usb_disk.img"
DELOS_MOUNT_PATH="/data/ftp/internal_000"
DELOS_DEBUG_USBDISKIMG_PATH="/data/usb_debug_disk.img"
DELOS_DEBUG_MOUNT_PATH="/data/ftp/internal_debug"
EVO_FILE=/factory/evo.txt

#Set img memory space
USER_MEM=33
DEBUG_MEM=8
if [ -f /etc/debug.conf ]
then
      source /etc/debug.conf
      if [ ${EXT_DEBUG_MEM} == 1 ];
      then
          USER_MEM=8
          DEBUG_MEM=33
      fi
fi

if [ -f ${EVO_FILE} ]; then
  EVO_TYPE=$(cat ${EVO_FILE})
else
  EVO_TYPE="classic"
fi

case ${EVO_TYPE} in
  classic)
    DELOS_PRODUCT_MEDIA_PATH="Rolling_Spider"
  ;;
  truck)
    DELOS_PRODUCT_MEDIA_PATH="Rolling_Spider_Evo_Truck"
  ;;
  light)
    DELOS_PRODUCT_MEDIA_PATH="Rolling_Spider_Evo_Light"
  ;;
  brick)
    DELOS_PRODUCT_MEDIA_PATH="Rolling_Spider_Evo_Brick"
  ;;
  hydrofoil)
    DELOS_PRODUCT_MEDIA_PATH="Rolling_Spider_Evo_Hydrofoil"
  ;;
  *)
    DELOS_PRODUCT_MEDIA_PATH="Rolling_Spider"
  ;;
esac

DELOS_DEBUG_PATH="${DELOS_DEBUG_MOUNT_PATH}/Debug"

DELOS_DEBUG_CUR_DIR="${DELOS_DEBUG_PATH}/current"

DELOS_DEBUG_ARCH_DIR="${DELOS_DEBUG_PATH}/archive"

DELOS_BLACKBOX_PATH="${DELOS_DEBUG_CUR_DIR}/blackbox"

DELOS_CKCM_PATH="${DELOS_DEBUG_CUR_DIR}/ckcm"

DELOS_CORES_PATH="${DELOS_DEBUG_CUR_DIR}/cores"

read_hsis_model()
{
  _HSIS_MODEL="/sys/kernel/hsis/model"
  _model="Unknown"
  [ -f ${_HSIS_MODEL} ] && read _model < ${_HSIS_MODEL}
  echo ${_model}
}

read_hsis_hwrev()
{
  _HSIS_HWREV="/sys/kernel/hsis/hwrev"
  _hwrev="Unknown"
  [ -f ${_HSIS_HWREV} ] && read _hwrev < ${_HSIS_HWREV}
  echo ${_hwrev}
}

read_hsis_pcbrev()
{
    _HSIS_PCBREV="/sys/kernel/hsis/pcbrev"
    _pcbrev="Unknown"
    [ -f ${_HSIS_PCBREV} ] && read _pcbrev < ${_HSIS_PCBREV}
    echo ${_pcbrev}
}

read_hsis_i2c_addr()
{
    _I2C_DEV=$(echo $1)
    _HSIS_HWDB="/sys/devices/virtual/hwdb/"
    _i2c_addr="Unknown"
    [ -f ${_HSIS_HWDB}/${_I2C_DEV}/i2c_addr ] && read _i2c_addr < ${_HSIS_HWDB}/${_I2C_DEV}/i2c_addr
    echo ${_i2c_addr}
}

# return number of connected users through shell (console or telnet)
# files /tmp/.shell.userconnected* is created at login (set /etc/profile)
shell_users_connected()
{
  ret=$(ls -1 /tmp/.shell.userconnected* 2>/dev/null |wc -l)
  return ${ret}
}

