#!/bin/bash 

postconf -p home_mailbox=Maildir/

groupadd -g 5000 vmail
useradd -m -u 5000 -g 5000 -s /bin/bash vmail

postconf -p virtual_mailbox_domains=/etc/postfix/vhosts
postconf -p virtual_mailbox_base=/home/vmail
postconf -p virtual_mailbox_maps=hash:/etc/postfix/vmaps
postconf -p virtual_minimum_uid=1000
postconf -p virtual_uid_maps=static:5000
postconf -p virtual_gid_maps=static:5000 

cat > /etc/postfix/vhosts <<"EOF"
hayton.me
EOF

cat > /etc/postfix/vmaps <<"EOF"
EOF
postmap /etc/postfix/vmaps

restart postfix 
