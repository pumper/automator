#!/bin/bash

for pid in $(ps -ef | awk '/out/ {print $2}')
do
        kill -9 $pid
done
nice /home/zxss10/bin/monitor.out;
nice /home/zxss10/bin/mtm.out;
nice /home/zxss10/bin/mtmmonitor.out;
nice /home/zxss10/bin/all.out;
