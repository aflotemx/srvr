#!/usr/bin/env bash
# name script
script="set-tz" ; \
# load smart log filename
smartlog=~/smrt.log ; \
# load complete output log filename
log=~/full.log ; \
# set timezone
timedatectl set-timezone America/Mexico_City >> $log ; \
# report date
date >> $smartlog