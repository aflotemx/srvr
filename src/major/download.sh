#!/usr/bin/env bash
# name script
script="donwload" ; \
# loop through download scripts
for script in ~/srvr/src/aux/auto/download/*.sh
do
# run script
bash $script
done