#!/usr/bin/env bash
# name script
script="get-software" ; \
# loop through apt install scripts
for script in ~/srvr/src/aux/auto/apt/*.sh
do
# run script
bash $script
done
# loop through 3party install scripts
for script in ~/srvr/src/aux/auto/3rdparty/*.sh
do
# run script
bash $script
done