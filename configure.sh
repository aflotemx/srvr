#!/usr/bin/env bash
# name script
script="configure" ; \
# load smart log filename
smartlog=~/smrt.log ; \
# load complete output log filename
log=~/full.log ; \
# create log files
touch $log $smartlog ; \
# update ssh deamon file (elude decision making on ssh packages update process)
bash ~/srvr/src/aux/auto/tune/ssh-daemon.sc ; \
# install all needed software
bash ~/srvr/src/major/get-software.sh ; \
# run reliability and security basic configs
bash ~/srvr/src/major/tune.sh
