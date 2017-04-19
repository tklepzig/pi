#!/bin/bash

while true
do
 if [ $(gpio -g read 2) -eq 1 ] && [ $(gpio -g read 7) -eq 0 ]
 then
   gpio -g write 7 1
 elif [ $(gpio -g read 2) -eq 1 ] && [ $(gpio -g read 7) -eq 1 ]
 then
   gpio -g write 7 0
 fi
 sleep 0.1
done
