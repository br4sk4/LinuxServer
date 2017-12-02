#!/bin/bash

mkdir -p /srv/gogs

docker pull gogs/gogs:latest
docker run --name=gogs -di -p 8082:22 -p 8083:3000 -v /srv/gogs:/data gogs/gogs

cp /srv/nevsoft/setup/ShellScripts/docker-container/gogs/gogs /etc/init.d/gogs
chown root:root /etc/init.d/gogs
chmod 755 /etc/init.d/gogs

cp /srv/nevsoft/setup/ShellScripts/docker-container/gogs/gogs.service /etc/systemd/system/gogs.service
chown root:root /etc/systemd/system/gogs.service
chmod 755 /etc/systemd/system/gogs.service

update-rc.d gogs defaults

systemctl daemon-reload
systemctl start gogs.service
systemctl enable gogs.service
