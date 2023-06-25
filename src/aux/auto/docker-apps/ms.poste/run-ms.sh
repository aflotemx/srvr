#!/usr/bin/env bash
# name script
script="run-ms" ; \
# locate ms folder
dir=$HOME ; \
# run container
docker run -d \
    -p 25:25 \
    -p 110:110 \
    -p 143:143 \
    -p 465:465 \
    -p 587:587 \
    -p 993:993 \
    -p 995:995 \
    -p 1325:1325\
    -p 1326:1326\
    -e "HTTP_PORT=1325" \
    -e "HTTPS_PORT=1326" \
    -e TZ=America/Chicago \
    -e "DISABLE_CLAMAV=TRUE" \
    -e "DISABLE_RSPAMD=TRUE" \
    -v $dir:/data \
    --name "ms" \
    -h "ms.aflotemx.com" \
    --restart unless-stopped \
    -t analogic/poste.io