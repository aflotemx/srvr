#!/usr/bin/env bash
# name script
script="ssh-daemon" ; \
# load smart log filename
smartlog=~/smrt.log ; \
# load complete output log filename
log=~/full.log ; \
# replace the config file, report errors if any
cp ~/srvr/data/sshd_config /etc/ssh/ >> $smartlog