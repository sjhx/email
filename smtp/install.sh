#!/bin/bash 

apt-get update
apt-get upgrade -y

apt-get install -y postfix dovecot-imapd dovecot-sieve dovecot-managesieved dspam roundcube 

