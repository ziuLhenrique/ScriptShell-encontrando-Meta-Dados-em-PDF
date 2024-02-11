#!/bin/bash
# script para subdomain takeover

for word in $(cat wordlist.txt); do 
    host -t cname $word.$1 | grep "alias for"
done