#!/bin/bash
# Simple script to automatically update/upgrade system with APT and automatically accept all prompts.

# Set REBOOT variable to false by default, change by using the -reboot flag.
REBOOT=false
 
while [ -n "$1" ]
do
    case "$1" in
        -reboot) REBOOT=true;;
        *) echo "Option $1 not recognized.";;
    esac
    shift
done
 
apt update && yes | apt upgrade -y
 
if [ "$REBOOT" = true ];
    then
        echo ""
        echo "Reboot flag set. System will restart in 5 seconds."
        echo ""
        sleep 5
        reboot
    else
        echo ""
        echo "Reboot flag was not set, returning to shell."
        echo ""
fi
