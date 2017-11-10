#!/bin/sh

echo "Factory settings" | logger -s -t "VeryLongPress" -p user.info

/bin/delos_reset_factory.sh
