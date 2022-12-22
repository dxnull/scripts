#!/bin/bash

read -p "Enter static IP and netmask (CIDR notation): " IP
read -p "Enter gateway IP: " GW
read -p "Enter primary DNS server: " DNS1
read -p "Enter secondary DNS server: " DNS2
read -p "Enter local domain: " DOMAIN
read -p "Enter NTP Server: " NTP

cat > /etc/systemd/network/00-static-en.network <<EOL
[Match]
Name=e*

[Network]
DHCP=no
Address=$IP
Gateway=$GW
DNS=$DNS1 $DNS2
Domains=$DOMAIN
NTP=$NTP
EOL

chmod 644 /etc/systemd/network/00-static-en.network

echo
echo "Done. Reboot required for static IP to take effect."
