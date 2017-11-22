#!/bin/sh

killall -9 ckcmd 2>/dev/null

echo "CKCM traces go thought TCP" | logger -s -t "Debug" -p user.info
ckcmd -T tcp:23000 &

# No need for redirect anymore... dragon-prog does it directly !
#/bin/ckcmd_redirect.sh

exit 0
