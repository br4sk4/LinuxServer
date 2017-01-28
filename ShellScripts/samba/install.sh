apt-get update
apt-get -y install samba

cp smb.conf /etc/samba/smb.conf

service samba restart
smbpasswd -U braska