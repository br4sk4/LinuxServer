#!/bin/bash

apt-get update
apt-get -y install samba

mv /etc/samba/smb.conf /etc/samba/smb.conf.bak
cp ./ShellScripts/samba/smb.conf /etc/samba/smb.conf

service samba restart

# don't forget:

# Create Samba-User
# smbpasswd -a user