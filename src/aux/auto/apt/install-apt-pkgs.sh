#!/usr/bin/env bash
# name script
script="install-apt-pkgs" ; \
# load smart log filename
smartlog=~/smrt.log ; \
# load complete output log filename
log=~/full.log ; \
# form apt packages list
pkgs=(`cat ~/srvr/data/apt-pkgs-list.txt`) ; \
# run apt
apt --assume-yes install -y ${pkgs[@]} >> $log ; \
# report installed packages
apt list ${pkgs[@]} >> $smartlog
