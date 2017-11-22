#!/bin/sh
#
# Test script to disable blocks on Delos
#

show() {
    devmem_tool_p6i 0 0
}

poweron() {


    if [ "$1" = "$2" ]; then
        if [ "$1" = "USBCLK" ]; then
            devmem_tool_p6i 1 1 0x30
        fi
        devmem_tool_p6i 1 2 $3
    fi

}

poweroff() {

    if [ "$1" = "$2" ]; then
        devmem_tool_p6i 1 3 $3
        echo $1
        if [ "$1" = "USBCLK" ]; then
            devmem_tool_p6i 2 1 0x30
            echo $1
        fi
    fi

}

gpioctrl() {
    if [ "$1" = "ETRON" ]; then
        if [ "$2" = "on" ]; then
            gpio 58 -d ho 1
        fi
        if [ "$2" = "off" ]; then
            gpio 58 -d ho 0
        fi
    fi
    if [ "$1" = "BLE" ]; then
        if [ "$2" = "on" ]; then
            gpio 5 -d ho 1
        fi
        if [ "$2" = "off" ]; then
            gpio 5 -d ho 0
        fi
    fi
}


if [ "$1" = "show" ]; then

    show
    echo "DMACLK"
    echo "AAICLK"
    echo "CVCLK"
    echo "USBCLK"
    echo "NANDCLK"
    echo "GPIOCLK"
    echo "SPIOCLK"
    echo "I2CM0CLK"
    echo "INTROMCLK"
    echo "MPMCCLK"
    echo "BUSMXCLK"
    echo "ETRON"
    echo "BLE"  
fi

if [ "$1" = "on" ]; then

    poweron "DMACLK" $2  0x01
    poweron "AAICLK" $2  0x08
    poweron "USBCLK" $2 0x80
    poweron "NANDCLK" $2  0x800
    poweron "PWMCLK" $2  0x1000
    poweron "GPIOCLK" $2 0x8000
    poweron "SPI1CLK" $2 0x40000
    poweron "UART0CLK" $2 0x100000
    poweron "UART1CLK" $2 0x200000
    poweron "I2CM0CLK" $2 0x4000000
    poweron "INTROMCLK" $2 0x10000000
    poweron "MPMCCLK"   $2 0x20000000
    poweron "BUSMXCLK"  $2 0x40000000
    gpioctrl $2 "on"
    gpioctrl $2 "on" 

fi

if [ "$1" = "off" ]; then

    poweroff "DMACLK" $2  0x01
    poweroff "AAICLK" $2  0x08
    poweroff "USBCLK" $2 0x80
    poweroff "NANDCLK" $2 0x800
    poweroff "GPIOCLK" $2 0x8000
    poweroff "SPI1CLK" $2  0x40000
    poweroff "UART0CLK" $2 0x100000
    poweroff "UART1CLK" $2 0x200000
    poweroff "I2CM0CLK" $2 0x4000000
    poweroff "INTROMCLK" $2 0x10000000
    poweroff "MPMCCLK"   $2 0x20000000
    poweroff "BUSMXCLK"  $2 0x40000000
    gpioctrl $2 "off"
    gpioctrl $2 "off" 
fi
