#!/usr/bin/env bash
# name script
script="set-ufw-rules" ; \
# load smart log filename
smartlog=~/smrt.log ; \
# load complete output log filename
log=~/full.log ; \
# make sure ufw is off
ufw disable >> $log ; \
# allow ssh port
ufw allow 22/tcp comment "ssh" >> $log ; \
# configure firewall rules
while read -r line; do ufw allow $line >> $log; done < ~/srvr/data/$HOSTNAME/use-ports.txt && \
# open all ports for outgoing traffic by default
ufw default allow outgoing >> $smartlog ; \
# block all ports for incoming traffic by default
ufw default deny incoming >> $smartlog ; \
# enable ufw without need of interaction
ufw --force enable >> $smartlog ; \
# report status
ufw status >> $smartlog
