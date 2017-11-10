#!/bin/sh 

EMERGENCY="$(gprop debug.emergency_debug)"
if [ "$EMERGENCY" == "1" ]; then
    echo "This is an emergency debug shell"
    echo "To fill factory partition, please run factory_filler.sh"
fi

exec /bin/sh -l
