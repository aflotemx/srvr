#!/usr/bin/env bash
# name script
script="tune" ; \
# loop through tune scripts
for script in ~/srvr/src/auto/tune/*.sh
do
# execute script
bash $script
done
