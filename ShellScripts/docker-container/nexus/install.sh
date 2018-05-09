#!/bin/bash

mkdir -p /srv/nexus

docker pull sonatype/nexus3:latest
docker run -di -p 8085:8081 --name nexus -v /srv/nexus:/nexus-data sonatype/nexus3

cp /srv/nevsoft/setup/ShellScripts/docker-container/nexus/nexus /etc/init.d/nexus
chown root:root /etc/init.d/nexus
chmod 755 /etc/init.d/nexus

cp /srv/nevsoft/setup/ShellScripts/docker-container/nexus/nexus.service /etc/systemd/system/nexus.service
chown root:root /etc/systemd/system/nexus.service
chmod 755 /etc/systemd/system/nexus.service

update-rc.d nexus defaults

systemctl daemon-reload
systemctl start nexus.service
systemctl enable nexus.service
