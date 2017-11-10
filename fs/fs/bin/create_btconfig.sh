#!/bin/sh

CONFIGFILE=/data/btconfig
PRODUCT_NAME=$(grep product_name /data/dragon.conf | cut -d ':' -f 2- | cut -d '"' -f 2)
BT_NAME=$(cat ${CONFIGFILE} | grep 'BTNAME' | cut -d '=' -f 2)

EVO_FILE=/factory/evo.txt

if [ ! -f ${EVO_FILE} ];then
  #
  # Determine product colour
  #
  COLOUR="WHITE"
  SERIAL=$(cat /factory/serial.txt)
  COLOURCODE=${SERIAL:5:3}
  if [ "${COLOURCODE}" == "319" ]; then COLOUR="WHITE"; fi
  if [ "${COLOURCODE}" == "320" ]; then COLOUR="BLUE"; fi
  if [ "${COLOURCODE}" == "321" ]; then COLOUR="RED"; fi

  #
  # Determine default Bluetooth name
  #
  SERIAL=$(cat /factory/serial.txt)
  DEFAULT_NAME="RS_${COLOUR:0:1}${SERIAL:12:6}"
else
  #
  # Determine default Bluetooth name
  #
  SERIAL=$(cat /factory/serial.txt)
  STYLE_FILE=/factory/style.txt

  if [ -f ${STYLE_FILE} ];then
    case $(cat ${STYLE_FILE}) in
      travis)
        DEFAULT_NAME="Travis_${SERIAL:12:6}"
      ;;
      mars)
        DEFAULT_NAME="Mars_${SERIAL:12:6}"
      ;;
      blaze)
        DEFAULT_NAME="Blaze_${SERIAL:12:6}"
      ;;
      swat)
        DEFAULT_NAME="Swat_${SERIAL:12:6}"
      ;;
      mcclane|maclane)
        DEFAULT_NAME="Maclan_${SERIAL:12:6}"
      ;;
      orak)
        DEFAULT_NAME="Orak_${SERIAL:12:6}"
      ;;
      newz)
        DEFAULT_NAME="NewZ_${SERIAL:12:6}"
      ;;
      *)
        DEFAULT_NAME="XXXXXX_${SERIAL:12:6}"
      ;;
    esac
  else
    DEFAULT_NAME="XXXXXX_${SERIAL:12:6}"
  fi
fi

TEST_DEFAULT_NAME_CONFIG=$(cat /etc/default-dragon.conf | grep product_name | grep MiniDrone)
if [ -n "$TEST_DEFAULT_NAME_CONFIG" ];
then
    mount / -o remount,rw
    cat /etc/default-dragon.conf | sed s@\"product_name\".*@\"product_name\"\ :\ \"${DEFAULT_NAME}\",@ > /etc/default-dragon.conf.new
    mv /etc/default-dragon.conf.new /etc/default-dragon.conf
    mount / -o remount,ro
fi


if [ ! -f ${CONFIGFILE} ];
then
  # First time, Generate a name
  LINE1ST="BDADDR=$(cat /factory/mac_address.txt)"
  LINE2ND="BTNAME=${DEFAULT_NAME}"
  echo $LINE1ST > ${CONFIGFILE}
  echo $LINE2ND >> ${CONFIGFILE}

  # Report in dragon.conf
  cat /data/dragon.conf | sed s@\"product_name\".*@\"product_name\"\ :\ \"${DEFAULT_NAME}\"@ > /data/dragon.conf.new
  mv /data/dragon.conf.new /data/dragon.conf

elif [ "${BT_NAME}" != "${PRODUCT_NAME}" ];
then
  # Product Name has been changed by FreeFlight. Report to btconfig
  cat ${CONFIGFILE} | sed "s/BTNAME=${BT_NAME}/BTNAME=${PRODUCT_NAME}/" > ${CONFIGFILE}.new
  mv ${CONFIGFILE}.new ${CONFIGFILE}
fi

sync
