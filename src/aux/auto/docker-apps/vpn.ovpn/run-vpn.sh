#!/usr/bin/env bash
# name script
script="run-vpn" ; \
# locate vpn folder
dir=$HOME/vpn/etc/openvpn ; \
# run container
docker run \
  -v $dir:/etc/openvpn \
  -d --restart unless-stopped \
  --name=ovpn \
  -p 443:1194/tcp \
  --cap-add=NET_ADMIN \
  kylemanna/openvpn