#!/bin/bash

HOST=$1
USERNAME=$2
PASSWORD=$3


ExternalScriptsDir=`cat /etc/zabbix/zabbix_server.conf | grep "^ExternalScripts=" | cut -d "=" -f 2`

sshpass -p $PASSWORD  ssh -T -o StrictHostKeyChecking=no $USERNAME@$HOST < $ExternalScriptsDir/IPPools_desk_m.rsc | tr -d '\n\r'
