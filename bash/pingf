#!/bin/bash
HOST=$1
COUNT=${2:-1000}

if [ -z "$1" ]
 then
  read -p "Host to ping: " HOST
fi

ping -f -A -M do -W 1 -v -c $COUNT $HOST
