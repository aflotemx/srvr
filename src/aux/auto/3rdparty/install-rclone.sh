#!/usr/bin/env bash
# name script
script="install-rclone" ; \
# load smart log filename
smartlog=~/smrt.log ; \
# load complete output log filename
log=~/full.log ; \
# run installation
curl https://rclone.org/install.sh | bash >> $log ; \
# run installation again and record the output to smart log
curl https://rclone.org/install.sh | bash >> $smartlog