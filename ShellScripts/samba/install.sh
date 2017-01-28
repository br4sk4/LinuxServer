#!/bin/bash

apt-get update
apt-get -y install samba

cp /srv/nevsoft/setup/smb.conf /etc/samba/smb.conf

service samba restart

# don't forget:

# Create Samba-User
# smbpasswd -U user