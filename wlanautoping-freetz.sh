#!/bin/sh
ip=192.168.222.1
while [ true ]
do
    ping -q -w 2 $ip 1>&2 2>/dev/null
    while [ $? == 0 && ctlmgr_ctl r eth0 status/carrier == 1 ]
    do
        if [ ctlmgr_ctl r wlan settings/ap_enabled_scnd == 0 ]
        then
            ctlmgr_ctl w wlan settings/ap_enabled_scnd 1
        fi            
        if [ ctlmgr_ctl r wlan settings/ap_enabled == 0 ]
        then
            ctlmgr_ctl w wlan settings/ap_enabled 1
        fi 
        sleep 60
        ping -q -w 2 $ip 1>&2 2>/dev/null
    done
    while [ ctlmgr_ctl r eth0 status/carrier == 0 ]
    do
        if [ ctlmgr_ctl r wlan settings/ap_enabled_scnd == 1 ]
        then
            ctlmgr_ctl w wlan settings/ap_enabled_scnd 0
        fi            
        if [ ctlmgr_ctl r wlan settings/ap_enabled == 1 ]
        then
            ctlmgr_ctl w wlan settings/ap_enabled 0
        fi   
        sleep 60    
    done
done
