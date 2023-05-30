#!/usr/bin/env bash
# name script
script="tune" ; \
# loop through tune scripts
for script in ~/srvr/src/aux/auto/tune/*.sh
do
# execute script
bash $script
done