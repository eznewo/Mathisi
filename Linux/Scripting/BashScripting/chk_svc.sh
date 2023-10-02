#!/bin/bash
# service=replace_me_with_a_valid_service

service=nfs
if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
echo "$service is running!!!"
else
/etc/init.d/$service start
fi
