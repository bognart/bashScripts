#!/bin/bash

LOG=/tmp/scan_nmap1.log

rm -f $LOG

sudo nmap -sV --open alberlet.no-ip.biz | grep open | awk '{print $1,$3;}' > $LOG
sudo chown nagios.nagios $LOG
