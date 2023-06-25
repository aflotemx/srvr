#!/usr/bin/env bash
# name script
script="services" ; \
# load smart log filename
smartlog=~/smrt.log ; \
# load complete output log filename
log=~/full.log ; \
# prepare list
list=(`cat ~/srvr/data/$HOSTNAME/autostart-list.txt`) ; \
# loop services in list
for service in ${list[@]}
do 
# sync autostart for service
systemctl enable $service >> $smartlog
# start service
systemctl start $service >> $smartlog
done