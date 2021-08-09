#!/bin/bash

# first user argument is the domain input list
for i in `cat $1`; do nslookup $i | grep ^Name -A1| awk '{print $2}';echo;done > output-nslookup-$1.tmp

# remove multiple emty lines and cleanup
cat -s output-nslookup-$1.tmp > output-nslookup-$1.txt && rm output-nslookup-$1.tmp
