#!/bin/bash

docker pull mysql:latest
docker run --name=mysql -dip 3306:3306 -e MYSQL_ROOT_PASSWORD=mysql mysql
docker stop mysql

cp /srv/nevsoft/setup/ShellScripts/docker-container/mysql/mysql /etc/init.d/mysql
chown root:root /etc/init.d/mysql
chmod 755 /etc/init.d/mysql

cp /srv/nevsoft/setup/ShellScripts/docker-container/mysql/mysql.service /etc/systemd/system/mysql.service
chown root:root /etc/systemd/system/mysql.service
chmod 755 /etc/systemd/system/mysql.service

update-rc.d mysql defaults

systemctl daemon-reload
systemctl start mysql.service
systemctl enable mysql.service
