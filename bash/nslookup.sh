#!/bin/bash

for i in `cat ./input.txt`; do nslookup $i | grep ^Name -A1| awk '{print $2}';echo;done > output.txt
