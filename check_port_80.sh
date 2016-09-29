#!/bin/bash
for i in `cat list | grep -v "#"` ; do
curl -s $i:80 >/dev/null && echo "$i is Up" || echo "$i is Down" ; done
