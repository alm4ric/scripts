#!/bin/bash

# run nslookup where the first user argument is the domain input list in format "target.com"
for i in `cat $1`; do nslookup $i | grep ^Name -A1| awk '{print $2}';echo;done > output-nslookup-$1.tmp1

# remove empty lines and hostnames that resolved to 127.0.0.1
sed -n '/127.0.0.1/{s/.*//;x;d;};x;p;${x;p;}' output-nslookup-$1.tmp1 | sed '/^$/d' > output-nslookup-$1.tmp2

# create input list for further (port)scanning (only in-scope objects)
grep "$1" output-nslookup-$1.tmp2 > output-nslookup-$1.txt

# cleanup
rm output-nslookup-$1.tmp*
