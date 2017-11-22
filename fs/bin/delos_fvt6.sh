#!/bin/sh

source /bin/delos_shell.sh

FVT6FILE=/data/ftp/internal_000/fvt6.txt
FVT6TMPFILE=/tmp/fvt6.new.txt
EVOFILE=/factory/evo.txt
EVOSTYLEFILE=/factory/style.txt

FVT6_EXIT()
{
  echo [FVT6] $1
  exit;
}

FVT6_LOG()
{
  echo $1 >> ${FVT6TMPFILE}
}

checkI2C()
{
  i2c_cmd | grep 'present' | grep -oi $3 > /dev/null

  ret=$?

  if [ ${ret} -eq 0 ];
  then
    echo -e "OK";
  else
    echo -e "KO";
  fi
}

checkUSB()
{
  if [ "$(lsusb | grep $1)" != "" ]; then echo -e "OK"; else echo -e "KO"; fi
}

checkFile()
{
  if [ -e $1 ]; then echo -e "OK"; else echo -e "KO"; fi
}

# Check that the factory partition was mounted and is in the expected state (readonly)
if [ "$(mount | grep factory)" != "ubi0:factory on /factory type ubifs (ro,relatime)" ]; then FVT6_EXIT "Unexpected factory partition state"; fi

# If the script was previously interrupted, clean up what's left
rm ${FVT6TMPFILE} -f

# Start testing & logging
FVT6_LOG "#"
FVT6_LOG "# Rolling Spider FVT6 firmware status"
FVT6_LOG "#"
FVT6_LOG ""

FVT6_LOG "[General Information]"
if [ -f ${EVOFILE} ];then
  FVT6_LOG "ProductName=RollingSpider_Evo"
  FVT6_LOG "EvoType=$(cat ${EVOFILE})"
  if [ -f ${EVOSTYLEFILE} ];then
    FVT6_LOG "EvoStyle=$(cat ${EVOSTYLEFILE})"
  else
    FVT6_LOG "EvoStyle=XXXXXX"
  fi
else
  FVT6_LOG "ProductName=RollingSpider"
fi
DroneName=$(cat /data/btconfig | grep BTNAME | cut -d '=' -f 2| cut -d '_' -f 1)
serNum=$(cat /data/btconfig | grep BTNAME | cut -d '=' -f 2| cut -d '_' -f 2)
if [ "$DroneName" = "Maclan" ];then
    FVT6_LOG "DroneName=Maclane_$serNum"
else
    FVT6_LOG "DroneName=${DroneName}_$serNum"
fi
FVT6_LOG "SerialNumber=$(cat /factory/serial.txt)"
FVT6_LOG "FWVersion=$(cat /version.txt)"
FVT6_LOG "HWVersion=$(read_hsis_pcbrev)"
FVT6_LOG "MACAddress=$(cat /factory/mac_address.txt)"
FVT6_LOG ""

FVT6_LOG "[I2C Devices]"
if [ -f ${EVOFILE} ];then
FVT6_LOG "PCA9633=$(checkI2C "" 0 $(read_hsis_i2c_addr "pca9633"))"
FVT6_LOG "SMB1358=$(checkI2C "" 0 $(read_hsis_i2c_addr "smb1358"))"
fi
FVT6_LOG "MPU6050=$(checkI2C "" 0 $(read_hsis_i2c_addr "mpu6050"))"
FVT6_LOG "MS5607=$(checkI2C "" 0 $(read_hsis_i2c_addr "ms5607"))"
FVT6_LOG "ESP668F=$(checkFile /dev/video0)"
FVT6_LOG "MT9V117=NOTTESTED"
FVT6_LOG "CSR8811=NOTTESTED"
FVT6_LOG ""

FVT6_LOG "[Global Status]"
FVT6_LOG "FWStatus=NOTTESTED"

# Save it with its final name, preventing its regeneration until next FVT6 flash
mv ${FVT6TMPFILE} ${FVT6FILE}
# Remove the trigger (ie. never regenerate FVT6 log until next FVT6 flashing)
sync

FVT6_EXIT "Done"

