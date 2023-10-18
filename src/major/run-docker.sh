#!/usr/bin/env bash
# name script
script="run-docker.sh" ; \
# load smart log filename
smartlog=~/smrt.log ; \
# load complete output log filename
log=~/full.log ; \
# list docker apps dirs in data folder
list=(`find ~/srvr/data/$HOSTNAME/docker/* -type d`) >> $log && \
for app in ${list[@]}
do
cd $app
docker-compose up -d >> $log
done
docker ps -a >> $smartlog
