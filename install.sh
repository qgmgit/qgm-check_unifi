#!/bin/bash

CMK_LOCALDIR=$(telnet localhost 6556 | head -n 20 | grep LocalDirectory: | awk -F":" '{print $2}' | sed -e "s/\s//g")

if [ "x$CMK_LOCALDIR" == "x" ]; then
    echo "Could not determine Check_MK local dir"
    exit 1
fi

if [ ! -d $CMK_LOCALDIR ]; then 
    mkdir -p $CMK_LOCALDIR
fi

cp qgm_check_unifi $CMK_LOCALDIR/qgm_check_unifi

mkdir -p /usr/local/lib/qgm_check_unifi/
cp unifi_api /usr/local/lib/qgm_check_unifi/unifi_api

if [ ! -f /etc/qgm_check_unifi.conf ]; then 
    cp qgm_check_unifi.conf /etc/qgm_check_unifi.conf
    chown root: /etc/qgm_check_unifi.conf
    chmod 600 /etc/qgm_check_unifi.conf
fi

