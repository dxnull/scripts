#!/bin/bash
MIRROR=$1
 
if [ -z "$1" ]
then
  read -p "Provide FQDN for APT mirror: " MIRROR
fi
 
sed -i "s,http://.*/ubuntu/,http://"$MIRROR"/ubuntu/,g" /etc/apt/sources.list
 
echo "Repos updated in /etc/apt/sources.list"
