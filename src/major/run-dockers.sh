#!/usr/bin/env bash
# name script
script="docker-run" ; \
# loop through docker scripts
for script in ~/srvr/src/aux/auto/docker-run/*.sh
do
# run script
bash $script
done