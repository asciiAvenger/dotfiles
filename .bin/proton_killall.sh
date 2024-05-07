#!/bin/bash

PIDS_TO_KILL=$(ps -ef | grep -E '[pP]roton|wine' | grep -v -E 'grep|proton_killall\.sh' | awk '{print $2}')

for p in $PIDS_TO_KILL; do
  kill -9 $p
done
