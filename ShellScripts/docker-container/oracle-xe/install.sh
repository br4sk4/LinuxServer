#!/bin/bash

docker build -t oracle-xe /srv/nevsoft/setup/DockerImages/OracleXE
docker run -dip 1521:1521 --name oracle-xe oracle-xe
docker stop oracle-xe

cp /srv/nevsoft/setup/ShellScripts/docker-container/oracle-xe /etc/init.d/oracle-xe
chown root:root /etc/init.d/oracle-xe
chmod 755 /etc/init.d/oracle-xe

cp /srv/nevsoft/setup/ShellScripts/docker-container/oracle-xe/oracle-xe.service /etc/systemd/system/oracle-xe.service
chown root:root /etc/systemd/system/oracle-xe.service
chmod 755 /etc/systemd/system/oracle-xe.service

update-rc.d oracle-xe defaults

systemctl daemon-reload
systemctl start oracle-xe.service
systemctl enable oracle-xe.service
