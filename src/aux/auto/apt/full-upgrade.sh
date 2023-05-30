#!/usr/bin/env bash
# name script
script="full-upgrade" ; \
# load smart log filename
smartlog=~/smrt.log ; \
# load complete output log filename
log=~/full.log ; \
# run script
apt update && apt --assume-yes full-upgrade >> $log ; \
# report script
apt update >> $smartlog