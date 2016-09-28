#!/bin/bash

ZPROC=`ps -A -ostat,ppid | grep -e '^[Zz]' | awk '{print $2}'`

if [ -n "$ZPROC" ];then
echo $ZPROC
kill -HUP $ZPROC
fi