#!/usr/bin/env bash
# name script
script="download-tombs" ; \
# load smart log filename
smartlog=~/smrt.log ; \
# load complete output log filename
log=~/full.log ; \
# prepare tombs to download
list=(`cat ~/srvr/data/$HOSTNAME/tombs-list.txt`) ; \
# get rclone remote name
cloud=`cat ~/srvr/data/rclone-remote.txt` ; \
# prepare path
pth=`cat ~/srvr/data/tombs-path.txt` ; \
# create tmp file
touch tmp ; \
# loop the list
for tomb in ${list[@]}
do
# download tomb, keep folder structure
rclone copy $cloud:$pth/$tomb $pth/$tomb
# check download, save in a tmp file
rclone check $cloud:$pth/$tomb $pth/$tomb --match tmp
# append tmp content to smartlog
cat tmp >> $smartlog
done
# remove tmp file
rm tmp