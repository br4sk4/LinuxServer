#!/bin/bash

cd /srv/nevsoft/setup/DockerImages/OracleXE
docker build -t oracle-xe ./
docker run -dip 1521:1521 --name oracle-xe oracle-xe
docker stop oracle-xe

cp /srv/nevsoft/setup/DockerImages/init-scripts/oracle-xe /etc/init.d/oracle-xe
chown root:root /etc/init.d/oracle-xe
chmod 755 /etc/init.d/oracle-xe

update-rc.d oracle-xe defaults

shutdown -r now
