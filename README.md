The Zabbix Mikrotik Pools template for 4.0, shows statistic about IP pools in Mikrotik (Total, Used, Percentage of used).

Uses LLD, JSON, SSH for connection to Mikrotik router and 4 files.
IPPools_desk_m.rsc and IPPools_desk_m.rsc are Mikrotik scripts for getting LLD JSON and data JSON.
ippools.sh and ippools_d.sh bash scripts for running IPPools_desk_m.rsc and IPPools_desk_m.rsc through SSH. 

This template needs changing macroses: {$MIKROTIK_SSH_PASS} {$MIKROTIK_SSH_PORT} {$MIKROTIK_SSH_USER}.

Installation:

1) Scripts use sshpass (I know using ssh keys is better) 
In Debian: sudo apt install sshpass
In Centos: sudo yum install sshpass

2) Put IPPools_desk_m.rsc, ippools_d.sh, IPPools_m.rsc, ippools.sh in Zabbix ExternalScripts folder (usualy /usr/lib/zabbix/externalscripts)

3) Import "Mikrotik - Pools LLD.xml" template and assign macroses: {$MIKROTIK_SSH_PASS} {$MIKROTIK_SSH_PORT} {$MIKROTIK_SSH_USER}

