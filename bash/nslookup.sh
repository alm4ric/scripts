#!/bin/bash

for i in `cat $1`; do nslookup $i | grep ^Name -A1| awk '{print $2}';echo;done > output-nslookup-$1.txt
