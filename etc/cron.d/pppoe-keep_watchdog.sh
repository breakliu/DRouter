#!/bin/sh

ps uax | grep 'pppoe-keep.sh' | grep  -v grep
if [ $? -ne 0 ]; then
    /bin/sh /etc/cron.d/pppoe-keep.sh &
fi
