#!/bin/bash

apt-get update
apt-get -y install samba

cp smb.conf /etc/samba/smb.conf

service samba restart

# don't forget:

# Create Samba-User
# smbpasswd -U user