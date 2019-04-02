#!/usr/bin/env bash

cachefile_name=/tmp/cached-publicip

function fileage() {
   local filename=$1
   local changed=$(stat -f "%m" ${filename})
   local now=$(date +%s)
   local elapsed

   let elapsed=now-changed
   echo $elapsed
 }

if [ -f ${cachefile_name} ];then
  if [ $(fileage ${cachefile_name}) -le 6000 ];then
    cat ${cachefile_name}
    exit
  fi
fi

curl ifconfig.co -s > ${cachefile_name}
cat ${cachefile_name}
