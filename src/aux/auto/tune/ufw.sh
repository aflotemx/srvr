#!/usr/bin/env bash
# name script
script="set-ufw-rules" ; \
# load smart log filename
smartlog=~/smrt.log ; \
# load complete output log filename
log=~/full.log ; \
# read ports to open list
list=(`cat ~/srvr/data/$HOSTNAME/use-ports.txt`) ; \
# make sure ufw is off
ufw disable >> $log ; \
# allow ssh port
ufw allow 22/tcp comment "ssh" >> $log ; \
# grab each port in list
for port in ${list[@]}
do
# allow port
ufw allow $port >> $log
done ; \
# open all ports for outgoing traffic by default
ufw default allow outgoing >> $smartlog ; \
# block all ports for incoming traffic by default
ufw default deny incoming >> $smartlog ; \
# enable ufw without need of interaction
echo -e "y\n" | ufw enable >> $smartlog ; \
# report status
ufw status >> $smartlog
