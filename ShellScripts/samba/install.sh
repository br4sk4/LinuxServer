#!/bin/bash

apt-get update
apt-get -y install samba

mv /etc/samba/smb.conf /etc/samba/smb.conf.bak
cp /srv/nevsoft/setup/ShellScripts/samba/smb.conf /etc/samba/smb.conf

service samba restart

# don't forget:

# Create Samba-User
# smbpasswd -U user