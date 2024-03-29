#!/bin/bash

###edit the following
#service=service_name
#email=your@email.address
#sender=admin@your.server
###stop editing

service=sshd
email=eznewo@gmail.com
sender=admin@Eir.pwc.ad

host=`hostname -f`
if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
echo "$service is running"
else
/usr/sbin/service $service start
if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
subject="$service at $host has been started"
message="$service at $host wasn't running and has been started"
else
subject="$service at $host is not running"
message="$service at $host is stopped and cannot be started!!!"
fi
/var/qmail/bin/qmail-inject <<EOM
To: $email
From: $sender
Subject: $subject

$message

EOM
fi
