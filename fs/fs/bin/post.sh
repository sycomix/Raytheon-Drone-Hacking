#!/bin/sh

#
# PowerOn Self Test Delos
#

YES="\033[33mOK\033[0m"
NO="\033[31mKO\033[0m"

#
# Function checkI2C:
# $1 : name
# $2 : i2c bus
# $3 : i2c addr
#
checkI2C()
{
  echo -n " > $1 :"
  if [ "$(I2C_DEVICE=/dev/i2c-$2 i2c_cmd | grep 'present' | grep -o $3)" == "$3" ];
  then
    echo -e "$YES";
  else
    echo -e "$NO";
  fi
}

echo "------------------------------------"
echo "HW Status :"
echo "------------------------------------"
checkI2C "Acc/Gyros MPU6050      " 0 0x68
checkI2C "Temp/Press MS5607      " 0 0x77
echo

