#!/bin/bash
## Simple cat in a list and skip output lines starting with #
for i in `cat list | grep -v "#"` ; do

## This is useful if NO IP/class is present!
#curl -s $i:80 >/dev/null && echo "$i is Up" || echo "$i is Down" ; done

## This is useful if an IP/class is present!
echo Checking $i ; nmap -oG - -p 80 -Pn $i | grep http ; done
