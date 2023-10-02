#!/bin/bash

### ☕ e@ኤር ➤➤ is_srv_is_active.sh will check if the service is active or not

STATUS="$(systemctl is-active sshd.service)"
if [ "${STATUS}" = "active" ]; then
    echo " Sevice is active ... Execute your tasks ....."
else 
    echo " Service not running.... so exiting "  
    exit 1  
fi


# or user the following simple one:

systemctl -q is-active tomcat.service  && \
echo "Tomcat Runnung" || \
echo "Service is not running at all "

