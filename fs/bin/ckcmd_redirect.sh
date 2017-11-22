#! /bin/sh

# redirect /var/log/messages into ckcmd

#nc=$(pidof ulogger)
#rnc=$?
#awk=$(pidof awk)
#rawk=$?

#[ ${rnc} -ne 0 -a ${rawk} -ne 0 ] && \
#  (
#    cat /var/log/messages | /usr/bin/awk -f /bin/ckcmd_redirect.awk
#    echo "Redirecting syslog messages to CKCM" | logger -s -t "Debug" -p user.info
#    (
#      tail -F /var/log/messages | /usr/bin/awk -f /bin/ckcmd_redirect.awk
#    ) &
#  )

(
sleep 1 ;
cat /var/log/messages | /usr/bin/nc 127.0.0.1 23001;
tail -f /var/log/messages | /usr/bin/nc 127.0.0.1 23001
)&

exit 0
