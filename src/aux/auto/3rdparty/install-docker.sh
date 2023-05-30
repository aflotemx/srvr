#!/usr/bin/env bash
# name script
script="install-docker" ; \
# load smart log filename
smartlog=~/smrt.log ; \
# load complete output log filename
log=~/full.log ; \
# list pkgs to install
pkgs="docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin" ; \
install -m 0755 -d /etc/apt/keyrings >> $log ; \
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg >> $log ; \
chmod a+r /etc/apt/keyrings/docker.gpg >> $log ; \
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null >> $log ; \
apt update >> $log ; \
apt --assume-yes install -y $pkgs >> $log ; \
apt list $pkgs >> $smartlog