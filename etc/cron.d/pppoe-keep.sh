#!/bin/sh

while true; do
    /sbin/ifconfig ppp0 > /dev/null
    if [ $? -ne 0 ]; then
        /usr/sbin/pppoe-start
    fi
    sleep 5
done
