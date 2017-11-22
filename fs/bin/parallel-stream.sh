##
## 'Parallel stream ' shell script
##
## Configure the cameras on the AR.Drone 2
##
##
##


## Path to the AR.Drone 2 Proto B camera (Samsung)
soc1040device=/sys/bus/i2c/devices/i2c-3/3-005d
## Path to for the Mykonos 2 Proto A camera 
ov9740device=/sys/bus/i2c/devices/i2c-3/3-0010

## Path to the AR.Drone 1 vertical camera
mt9v117device=/sys/bus/i2c/devices/i2c-2/2-005d
## Path to the AR.Drone 2 vertical camera
ov7670device=/sys/bus/i2c/devices/i2c-2/2-0021

kernel=`uname -r`


##
## Load any available camera modules - used to debug
## In normal mode, these modules are automatically loaded by the ISP driver, 
## according to the ISP subdev table in the platform file.
##
for camera in soc1040 ov9740 ov7670 mt9v117
do
if [ -f /lib/modules/${kernel}/kernel/drivers/media/video/${camera}.ko ]; then
        echo "Loading kernel driver for ${camera}..."
        #modprobe ${camera}
fi
done

##
## Load the OMAP3 ISP driver if it was compiled as a module
##
if [ -f /lib/modules/${kernel}/kernel/drivers/media/video/isp/omap3-isp.ko ]; then
        echo "Loading OMAP3 ISP driver..."
        modprobe omap3-isp
fi


##
## Tries to detect which cameras were found by the kernel
##
camh="(none)";
if [ -e ${soc1040device} ]; then
        camh=$(cat ${soc1040device}/name)
fi
if [ -e ${ov9740device} ]; then
        camh=$(cat ${ov9740device}/name)
fi

echo "Detected i2c horizontal camera = ${camh}"                       

if [ -e ${mt9v117device} ]; then
    camv=$(cat ${mt9v117device}/name);
elif [ -e ${ov7670device} ]; then
	camv=$(cat ${ov7670device}/name);
else
        camv="(none)";
        echo "-camv.disabled" >> /tmp/.program.elf.arguments
fi

echo "Detected i2c vertical camera = ${camv}"                       


##
## Wait for the V4L subdevices to be created by the ISP kernel module
##  and configure subdev8.
##
while [ ! -e /dev/v4l-subdev8 ]
do
  usleep 100000
done
exec 6</dev/v4l-subdev8


##
## Create the pseudo-file used to communicate with the ISP driver_version
##  It might have beeb automatically created by the ISP driver itself.
##
if [ ! -e /dev/media0 ]; then
        mknod /dev/media0 c 247 0
fi

##
## Configure the ISP - build a video data pipeline
##
media-ctl -r
media-ctl -l "\"${camv}\":0->\"OMAP3 ISP CCDC\":0[1]"
media-ctl -l '"OMAP3 ISP CCDC":1->"OMAP3 ISP CCDC output":0[1]'
media-ctl -f "\"${camv}\":0[UYVY2X8 320x240]"
media-ctl -f '"OMAP3 ISP CCDC":1[UYVY2X8 320x240]'
media-ctl -f '"OMAP3 ISP CCDC":0[UYVY2X8 320x240]'

media-ctl -l "\"${camh}\":0->\"OMAP3 ISP CSI2a\":0[1]"
media-ctl -l '"OMAP3 ISP CSI2a":1->"OMAP3 ISP CSI2a output":0[1]'
media-ctl -f "\"${camh}\":0[UYVY2X8 1280x720]"

media-ctl -l '"OMAP3 ISP resizer input":0->"OMAP3 ISP resizer":0[1]'
media-ctl -l '"OMAP3 ISP resizer":1->"OMAP3 ISP resizer output":0[1]'
media-ctl -f '"OMAP3 ISP resizer":0[UYVY2X8 1280x720]'
media-ctl -f '"OMAP3 ISP resizer":1[UYVY2X8 640x360]'

##
## Use media ctl to find what video device corresponds to our cameras
##
export CAMV_V4LDEVICE=`media-ctl -e "OMAP3 ISP CCDC out"`
export CAMH_V4LDEVICE=`media-ctl -e "OMAP3 ISP CSI2a output"`
export RESIZER_INPUT_V4LDEVICE=`media-ctl -e "OMAP3 ISP resizer input"`
export RESIZER_OUTPUT_V4LDEVICE=`media-ctl -e "OMAP3 ISP resizer output"`

#yavta -f UYVY --skip 500 -F/tmp/camv -s 320x240 -c505 -u ${CAMV_V4LDEVICE}&
#yavta -f UYVY --skip 500 -F/tmp/camh -s 1280x720 -c505 -u -O UYVY -S 640x360 ${CAMH_V4LDEVICE} ${RESIZER_INPUT_V4LDEVICE} ${RESIZER_OUTPUT_V4LDEVICE} 
