#!/usr/bin/env bash
# name script
script="copy-tombs" ; \
# load smart log filename
smartlog=~/smrt.log ; \
# load complete output log filename
log=~/full.log ; \
# prepare tombs to copy
list=(`cat ~/srvr/data/$HOSTNAME/tombs-list.txt`) ; \
# prepare path
pth=`cat ~/srvr/data/tombs-path.txt` ; \
# loop the list
for tomb in ${list[@]}
do
# prepare key file
key=`find $pth/$tomb -name "*.tomb.key"`
# prepare tomb file
file=`find $pth/$tomb -name "*.tomb"`
# open tomb
tomb open -k $key $file
# copy files
cp -r /media/$tomb/$tomb /root/$tomb
# look for missing files 
rclone check /media/$tomb/$tomb /root/$tomb --missing-on-dst tmp
# append report to smartlog
cat tmp >> $smartlog
# look for different files
rclone check /media/$tomb/$tomb /root/$tomb --differ tmp
# append report to smartlog
cat tmp >> $smartlog
ls -d /root/$tomb >> $smartlog
done
# loop the list
for tomb in ${list[@]}
do
# close tomb
tomb close $tomb
done