#!/bin/bash
NEW_HOSTNAME=$1

hostnamectl set-hostname $NEW_HOSTNAME
sed -i 's/127.0.1.1.*/127.0.1.1\t'"$NEW_HOSTNAME"\ \ $NEW_HOSTNAME'/g' /etc/hosts

service networking restart
