#!/bin/bash

# Here is the script modified to suit your needs. 
# You must have mailx installed.

## TO INSTALL THE MAILX:
	# sudo apt-get install bsd-mailx
###edit the following
#service=service_name
#email=user@domain.com
###stop editing

###edit the following
service=sshd
email=eznewo@gmail.com
###stop editing

host=`hostname -f`
if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
echo "$service is running"
else
/etc/init.d/$service start
if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
subject="$service at $host has been started"
echo "$service at $host wasn't running and has been started" | mail -s "$subject" $email
else
subject="$service at $host is not running"
echo "$service at $host is stopped and cannot be started!!!" | mail -s "$subject" $email
fi
fi
