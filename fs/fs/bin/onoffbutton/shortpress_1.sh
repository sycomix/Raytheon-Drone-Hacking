#!/bin/sh
# Script called when pressing the ON/OFF button once

echo "Triggered shutdown" | logger -s -t "ShortPress1" -p user.info

/bin/delos_shutdown.sh
