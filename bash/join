#!/bin/bash
DOMAIN=$1
ACCOUNT=""

if [ -z "$1" ]
 then
  read -p "Target domain to join: " DOMAIN
fi

read -p "Provide Domain Admin or Join Account: " ACCOUNT

/opt/pbis/bin/domainjoin-cli join $DOMAIN $ACCOUNT
/opt/pbis/bin/config LoginShellTemplate /bin/bash
/opt/pbis/bin/config AssumeDefaultDomain true
/opt/pbis/bin/lwsm refresh lsass
/opt/pbis/bin/ad-cache --delete-all

echo "%domain^admins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
echo 'session [success=ok default=ignore] pam_lsass.so' >> /etc/pam.d/common-session
sed -i "/exit 0/i\/opt/pbis/bin/update-dns" /etc/rc.local

read -n 1 -s -r -p "Done. Press any key to reboot."
reboot
