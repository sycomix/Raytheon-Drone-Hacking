#!/bin/sh

source /bin/user_gpio.sh

## ===== INIT ========================================================

mkdir -p /tmp/.boot

usbmode_file="/tmp/.boot/usbmode"

echo "init" > ${usbmode_file}

if [ "$1" == "--debug" ]; then export debug="1"; else export debug="0"; fi

gpio_edge_set "VBUS_DETECT" "both"
VBUS_PATH=$(gpio_path "VBUS_DETECT")

RUN()
{
	if [ "$debug" == "1" ]; then echo "Would run $1"; else $1; fi
}

while [ 1 ]; do

    #
    # Check if the USB VBUS pin matches the current configuration
    #
    exception=0  # will be set to 1 if a mismatch is detected
    VBUS=$(gpio_in "VBUS_DETECT")


    if [ ${VBUS} -eq 1 ]
    then
        if [ "$USB_STATE" = "usb disconnected" ];
        then
            exception=1
        fi
        USB_STATE="usb connected"
    else
        if [ "$USB_STATE" = "usb connected" ];
        then
            exception=1
	fi
        USB_STATE="usb disconnected"
    fi
    echo "Current USB state : ${USB_STATE}"

    #
    # If the configuration matches the USB state, wait for a change on the VBUS pin
    #
    if [ $exception = 0 -a "$(cat ${usbmode_file})" != "init" ];
    then
	echo "Waiting for USB cable event ..."
	vbus=$(poll_file -w ${VBUS_PATH})
	vbus=$(gpio_in "VBUS_DETECT")
	if [ ${vbus} -eq 0 ]; then
	  USB_STATE="usb disconnected"
	else
	  USB_STATE="usb connected"
	fi
	echo " ... USB cable event"
    fi


    #
    # Stop the previous mode
    #
    if [ "$(cat ${usbmode_file})" != "init" ];
    then
      if [ "$USB_STATE" == "usb connected" ];
      then
	RUN /bin/delos_flightmode_stop.sh
      fi
      if [ "$USB_STATE" == "usb disconnected" ];
      then
 	RUN /bin/delos_gadgetmode_stop.sh
      fi
    fi


    #
    # Start the appropriate mode
    #
    if [ "$USB_STATE" == "usb connected" ];
    then
        EVOFILE=/factory/evo.txt
        if [ -f ${EVOFILE} ];then
            # Launch battery charger algo
            (/bin/qualcomm_charger_algo_input_current.sh)&
        fi

        if [ "$(cat ${usbmode_file})" == "init" ];
        then
            #Wait for dragon start
            sleep 2
            #launch flightmode stop to avoid mount issues
            #when boot with USB plugged
            RUN /bin/delos_flightmode_stop.sh
        fi
	    RUN /bin/delos_gadgetmode_start.sh
	    echo "gadget" >${usbmode_file}
    fi
    if [ "$USB_STATE" == "usb disconnected" ];
      then
 	    RUN /bin/delos_flightmode_start.sh
	    echo "flight" > ${usbmode_file}
    fi
    #

done
